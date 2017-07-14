//
//  Config.swift
//  Perfect-App-Template
//
//  Created by Jonathan Guthrie on 2017-02-20.
//	Copyright (C) 2017 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PerfectLib
import JSONConfig

struct AppCredentials {
	var clientid = ""
	var clientsecret = ""
}

func config() {
	#if os(Linux)
		let fname = "./config/ApplicationConfigurationLinux.json"
	#else
		let fname = "./config/ApplicationConfiguration.json"
	#endif

	if let configData = JSONConfig(name: fname) {
		if let dict = configData.getValues() {

			// Required Values
			httpPort = dict["httpport"] as! Int

			// Optional Values
//			if let i = dict["keyname"] { let x = i as! String }


			// For ORM
//			MySQLConnector.host        = dict["mysqlhost"] as! String
//			MySQLConnector.username    = dict["mysqluser"] as! String
//			MySQLConnector.password    = dict["mysqlpwd"] as! String
//			MySQLConnector.database    = dict["mysqldbname"] as! String
//			MySQLConnector.port        = dict["mysqlport"] as! Int

			// For Sessions
//			MySQLSessionConnector.host = MySQLConnector.host
//			MySQLSessionConnector.port = MySQLConnector.port
//			MySQLSessionConnector.username = MySQLConnector.username
//			MySQLSessionConnector.password = MySQLConnector.password
//			MySQLSessionConnector.database = MySQLConnector.database
//			MySQLSessionConnector.table = "sessions"

			// Outbound email config
//			SMTPConfig.mailserver         = dict["mailserver"] as! String
//			SMTPConfig.mailuser			  = dict["mailuser"] as! String
//			SMTPConfig.mailpass			  = dict["mailpass"] as! String
//			SMTPConfig.mailfromaddress    = dict["mailfromaddress"] as! String
//			SMTPConfig.mailfromname       = dict["mailfromname"] as! String
		}
	} else {
		print("Unable to get Configuration")
	}

}
