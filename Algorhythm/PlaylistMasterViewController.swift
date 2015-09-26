//
//  ViewController.swift
//  Algorhythm
//
//  Created by RYWU on 9/16/15.
//  Copyright (c) 2015 吳瑞洋公司. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {
    
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var playlistImageView0: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aButton.setTitle("Presse me!", forState: UIControlState.Normal)
        
        let playlist = Playlist(index: 0)
        playlistImageView0.image = playlist.icon
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetail" {
            let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
            playlistDetailController.playlist = Playlist(index: 0)
            
        }
    }
    
}

