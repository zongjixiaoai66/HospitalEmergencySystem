const menu = {
    list() {
        return [
    {
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员管理"
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
                        "menu":"病房信息管理",
                        "menuJump":"列表",
                        "tableName":"bingfang"
                    }
                    ,
                    {
                        "buttons":[
                            "订单",
                            "查看",
                            "删除"
                        ],
                        "menu":"病房预约管理",
                        "menuJump":"列表",
                        "tableName":"bingfangOrder"
                    }
                ],
                "menu":"病房信息管理"
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
                        "menu":"病例信息管理",
                        "menuJump":"列表",
                        "tableName":"bingli"
                    }
                ],
                "menu":"病例信息管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"病房类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryBingfang"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"公告类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryNews"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"科室管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryYisheng"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"时间类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryYishengOrder"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"职位管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryZhiwei"
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
                        "menu":"论坛信息管理",
                        "menuJump":"列表",
                        "tableName":"forum"
                    }
                ],
                "menu":"论坛信息管理"
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
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"医生管理",
                        "menuJump":"列表",
                        "tableName":"yisheng"
                    }
                    ,
                    {
                        "buttons":[
                            "订单",
                            "查看",
                            "删除"
                        ],
                        "menu":"急诊预约管理",
                        "menuJump":"列表",
                        "tableName":"yishengOrder"
                    }
                ],
                "menu":"医生管理"
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
                        "menu":"用户健康码管理",
                        "menuJump":"列表",
                        "tableName":"yonghujiankangma"
                    }
                ],
                "menu":"用户健康码管理"
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
                        "menu":"轮播图管理",
                        "menuJump":"列表",
                        "tableName":"config"
                    }
                ],
                "menu":"轮播图信息"
            }
        ],
        "frontMenu":[],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    },
	{
	    "backMenu":[
	        {
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                        "新增",
	                        "删除"
	                    ],
	                    "menu":"论坛信息管理",
	                    "menuJump":"列表",
	                    "tableName":"forum"
	                }
	            ],
	            "menu":"论坛信息管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                    ],
	                    "menu":"公告信息管理",
	                    "menuJump":"列表",
	                    "tableName":"news"
	                }
	            ],
	            "menu":"公告信息管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "审核",
	                        "查看",
	                    ],
	                    "menu":"急诊预约管理",
	                    "menuJump":"列表",
	                    "tableName":"yishengOrder"
	                }
	            ],
	            "menu":"急诊预约管理"
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
			            "menu":"病例信息管理",
			            "menuJump":"列表",
			            "tableName":"bingli"
			        }
			    ],
			    "menu":"病例信息管理"
			}
	    ],
	    "frontMenu":[],
	    "hasBackLogin":"是",
	    "hasBackRegister":"否",
	    "hasFrontLogin":"否",
	    "hasFrontRegister":"否",
	    "roleName":"医生",
	    "tableName":"yisheng"
	},
	    {
	        "backMenu":[
	            {
	                "child":[
	                    {
	                        "buttons":[
	                            "查看",
	                        ],
	                        "menu":"病房信息管理",
	                        "menuJump":"列表",
	                        "tableName":"bingfang"
	                    }
	                    ,
	                    {
	                        "buttons":[
	                            "查看",
	                        ],
	                        "menu":"病房预约管理",
	                        "menuJump":"列表",
	                        "tableName":"bingfangOrder"
	                    }
	                ],
	                "menu":"病房信息管理"
	            }
	            ,{
	                "child":[
	                    {
	                        "buttons":[
	                            "查看",
	                        ],
	                        "menu":"病例信息管理",
	                        "menuJump":"列表",
	                        "tableName":"bingli"
	                    }
	                ],
	                "menu":"病例信息管理"
	            }
	            ,{
	                "child":[
	                    {
	                        "buttons":[
	                            "查看",
	                            "新增",
	                            "删除"
	                        ],
	                        "menu":"论坛信息管理",
	                        "menuJump":"列表",
	                        "tableName":"forum"
	                    }
	                ],
	                "menu":"论坛信息管理"
	            }
	            ,{
	                "child":[
	                    {
	                        "buttons":[
	                            "查看",
	                        ],
	                        "menu":"公告信息管理",
	                        "menuJump":"列表",
	                        "tableName":"news"
	                    }
	                ],
	                "menu":"公告信息管理"
	            }
	            ,{
	                "child":[
	                    {
	                        "buttons":[
	                            "查看",
	                        ],
	                        "menu":"医生管理",
	                        "menuJump":"列表",
	                        "tableName":"yisheng"
	                    }
	                    ,
	                    {
	                        "buttons":[
	                            "查看",
	                        ],
	                        "menu":"急诊预约管理",
	                        "menuJump":"列表",
	                        "tableName":"yishengOrder"
	                    }
	                ],
	                "menu":"医生管理"
	            }
	            ,{
	                "child":[
	                    {
	                        "buttons":[
	                            "查看",
	                            "新增",
	                            "删除"
	                        ],
	                        "menu":"用户健康码管理",
	                        "menuJump":"列表",
	                        "tableName":"yonghujiankangma"
	                    }
	                ],
	                "menu":"用户健康码管理"
	            }
	        ],
	        "frontMenu":[],
	        "hasBackLogin":"是",
	        "hasBackRegister":"否",
	        "hasFrontLogin":"否",
	        "hasFrontRegister":"否",
	        "roleName":"用户",
	        "tableName":"yonghu"
	    }
]
    }
}
export default menu;