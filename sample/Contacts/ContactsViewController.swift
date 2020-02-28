//
//  ContactsViewController.swift
//  sample
//
//  Created by admin on 28/02/20.
//  Copyright © 2020 naresh.ko. All rights reserved.
//

import UIKit
import Contacts

struct FetchedContact {
    var firstName: String
    var lastName: String
    var telephone: String
}

class ContactsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let cellReuseIdentifier = "cell"
    //    var contacts = [FetchedContact]()
    var filtercontacts = [FetchedContact]()
    var filter = false
    var contacts = [CNContact]()
    var NameArray = [String]()
    var NumberArray = [String]()
    var filteredName = [String]()
    var filteredNumber = [String]()
    
    @IBOutlet weak var searchTF: UITextField!
    @IBOutlet weak var contactsTV: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        contactsTV.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        getContacts()
        contactsTV.delegate = self
        contactsTV.dataSource = self
        DispatchQueue.main.async {
            self.contactsTV.reloadData() // update your tableView having phoneContacts array
        }
        
    }
    //    private func fetchContacts() {
    //        // 1.
    //        let store = CNContactStore()
    //        store.requestAccess(for: .contacts) { (granted, error) in
    //            if let error = error {
    //                print("failed to request access", error)
    //                return
    //            }
    //            if granted {
    //                // 2.
    //                let keys = [CNContactGivenNameKey, CNContactFamilyNameKey, CNContactPhoneNumbersKey]
    //                let request = CNContactFetchRequest(keysToFetch: keys as [CNKeyDescriptor])
    //                do {
    //                    // 3.
    //                    try store.enumerateContacts(with: request, usingBlock: { (contact, stopPointer) in
    //                        self.contacts.append(FetchedContact(firstName: contact.givenName, lastName: contact.familyName, telephone: contact.phoneNumbers.first?.value.stringValue ?? ""))
    //                    })
    //                } catch let error {
    //                    print("Failed to enumerate contact", error)
    //                }
    //            } else {
    //                print("access denied")
    //            }
    //        }
    //    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.filteredName.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = contactsTV.dequeueReusableCell(withIdentifier: cellReuseIdentifier)!
        
        // set the text from the data model
        cell.textLabel?.text = self.filteredName[indexPath.row]
        cell.detailTextLabel?.text = self.filteredName[indexPath.row]
        return cell
        
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40;
    }
    
    @IBAction func onClickSearchButton(_ sender: Any) {
        if(self.NameArray.count != 0){
            var mystring = "\(searchTF.text ?? "")"
            if(searchTF.text?.count == 1){
                
                mystring = ""
            }
            if(!mystring.isEmpty) {
                filteredName = [String]()
                filteredNumber = [String]()
                var i = 0
                for ContactName in self.NameArray {
                    let name = ContactName
                    let range = name.lowercased().range(of: mystring, options: .caseInsensitive, range: nil,   locale: nil)
                    
                    if range != nil {
                        if(filteredName.count == 0){
                            
                            filteredName = [ContactName]
                            filteredNumber = [NumberArray[i]]
                            
                        }else{
                            
                            filteredName.append(ContactName)
                            filteredNumber.append(NumberArray[i])
                        }
                        
                    }
                    i = i+1
                }
                
                if(searchTF.text?.count == 1){
                    
                    self.filteredName   = self.NameArray
                    self.filteredNumber = self.NumberArray
                    
                }
                
            } else {
                self.filteredName   = self.NameArray
                self.filteredNumber = self.NumberArray
                
            }
        }
        self.contactsTV.reloadData()
    }
    
    
    func getContacts()
    {
        let status = CNContactStore.authorizationStatus(for: .contacts)
        if status == .denied || status == .restricted {
            presentSettingsActionSheet()
            return
        }
        
        // open it
        
        let contactStore = CNContactStore()
        contactStore.requestAccess(for: .contacts) { granted, error in
            guard granted else {
                DispatchQueue.main.async {
                    self.presentSettingsActionSheet()
                }
                return
            }
            
            // get the contacts
            let keys = [
                CNContactFormatter.descriptorForRequiredKeys(for: .fullName),
                CNContactPhoneNumbersKey as CNKeyDescriptor] as [Any]
            let request = CNContactFetchRequest(keysToFetch: keys as! [CNKeyDescriptor])
            do {
                try contactStore.enumerateContacts(with: request){
                    (contact, stop) in
                    // Array containing all unified contacts from everywhere
                    self.contacts.append(contact)
                    var i = 0
                    for phoneNumber in contact.phoneNumbers {
                        
                        print("\(contact.givenName) \(contact.familyName)\n \(phoneNumber.value.stringValue)")
                        
                        self.NameArray.append("\(contact.givenName) \(contact.familyName)")
                        self.NumberArray.append(phoneNumber.value.stringValue)
                        i = i+1
                        
                    }
                    i = 0
                    
                    self.filteredName   = self.NameArray
                    self.filteredNumber = self.NumberArray
                    
                    self.contactsTV.reloadData()
                }
            } catch {
                print("unable to fetch contacts")
            }
        }
    }
    
    func presentSettingsActionSheet() {
        let alert = UIAlertController(title: "Permission to Contacts", message: "This app needs access to contacts in order to Send top-up.", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Go to Settings", style: .default) { _ in
            let url = URL(string: UIApplication.openSettingsURLString)!
            UIApplication.shared.open(url)
        })
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        present(alert, animated: true)
    }
    
}
