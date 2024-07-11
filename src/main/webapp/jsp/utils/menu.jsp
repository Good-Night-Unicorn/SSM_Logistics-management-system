<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

var menus = [

	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员信息"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"用户管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"用户管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"司机信息管理",
			            "menuJump":"列表",
			            "tableName":"shiji"
			        }
			    ],
			    "menu":"司机信息管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"车辆信息管理",
                        "menuJump":"列表",
                        "tableName":"cheliang"
                    }
                ],
                "menu":"车辆信息管理"
            }
			,{
				"child":[
					{
						"buttons":[
							"查看",
							"新增",
							"修改",
							"删除"
						],
						"menu":"运输成本管理",
						"menuJump":"列表",
						"tableName":"yunshuchengben"
						}
					],
				"menu":"运输成本管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"承运任务管理",
                        "menuJump":"列表",
                        "tableName":"renwu"
                    }
                ],
                "menu":"承运任务管理"
            }
			,{
				"child":[
					{
						"buttons":[
							"查看",
							"新增",
							"修改",
							"删除"
						],
						"menu":"运单状态管理",
						"menuJump":"列表",
						"tableName":"yundanzhuangtai"
					}
				],
				"menu":"运单状态管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"驾照类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryJiazhao"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"车辆型号管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryXinghao"
			        }
			
			    ],
			    "menu":"基础数据管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"公告信息管理",
			            "menuJump":"列表",
			            "tableName":"news"
			        }
			    ],
			    "menu":"公告信息管理"
			}
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    }
	,
	{
	    "backMenu":[
	        {
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"司机信息管理",
			            "menuJump":"列表",
			            "tableName":"shiji"
			        }
			    ],
			    "menu":"司机信息管理"
			}
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"车辆信息管理",
	                    "menuJump":"列表",
	                    "tableName":"cheliang"
	                }
	            ],
	            "menu":"车辆信息管理"
	        }
			,{
				"child":[
					{
						"buttons":[
							"查看"
						],
						"menu":"运单状态管理",
						"menuJump":"列表",
						"tableName":"yundanzhuangtai"
					}
				],
				"menu":"运单状态管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"公告信息管理",
			            "menuJump":"列表",
			            "tableName":"news"
			        }
			    ],
			    "menu":"公告信息管理"
			}
	    ],
	    "frontMenu":[
	
	    ],
	    "roleName":"用户",
	    "tableName":"yonghu"
	}
];

var hasMessage = '';
