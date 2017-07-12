//
//  ViewController.swift
//  MentorProject
//
//  Created by Yohanes yohanes on 7/12/17.
//  Copyright © 2017 SuperSlacker. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var CourseMarketTableView: UITableView!
    
    var identifierCourseMarketTable: String = "CourseMarketCell"
    
    var courses: [CourseMarket] = [CourseMarket]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CourseMarketTableView.delegate = self
        CourseMarketTableView.dataSource = self
        courses.append(CourseMarket(title: "Math" , course: "10 courses", tag: "Junior High School", backgroundImg: ""))
        courses.append(CourseMarket(title: "Math" , course: "10 courses", tag: "Junior High School", backgroundImg: ""))
        courses.append(CourseMarket(title: "Math" , course: "10 courses", tag: "Junior High School", backgroundImg: ""))
        courses.append(CourseMarket(title: "Math" , course: "10 courses", tag: "Junior High School", backgroundImg: ""))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CourseMarketTableView.dequeueReusableCell(withIdentifier: identifierCourseMarketTable, for: indexPath) as! CourseMarketTableViewCell
        cell.titleLabel?.text = courses[indexPath.row].title
        
        cell.courseLabel?.text = courses[indexPath.row].course
        cell.tagLabel?.text = courses[indexPath.row].tag
        
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }


}

