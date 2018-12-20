{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 0.0, 0.0, 370.0, 160.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 15,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 552.0, 152.0, 176.0, 20.0 ],
					"text" : "sound input / attack detection"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 232.0, 548.0, 826.0, 629.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 73.0, 272.0, 150.0, 20.0 ],
									"text" : "set mojave"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 307.0, 29.5, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 89.0, 302.5, 118.0, 35.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 439.2618408203125, 361.0, 118.0, 35.0 ],
									"text" : "rain_drop/mojave.frag"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 41.0, 309.0, 29.5, 22.0 ],
									"text" : "2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 41.0, 272.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"items" : [ "pictures", ",", "legacy_mac", ",", "mojave" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 41.0, 354.0, 100.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "number",
									"maximum" : 127,
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 265.0, 364.0, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 1,
											"parameter_longname" : "number[1]",
											"parameter_invisible" : 1,
											"parameter_initial" : [ 237 ],
											"parameter_speedlim" : 100.0,
											"parameter_shortname" : "number"
										}

									}
,
									"varname" : "number[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "number",
									"maximum" : 127,
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 310.0, 364.0, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 1,
											"parameter_longname" : "number",
											"parameter_invisible" : 1,
											"parameter_initial" : [ 237 ],
											"parameter_speedlim" : 100.0,
											"parameter_shortname" : "number"
										}

									}
,
									"varname" : "number"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 272.0, 469.0, 136.0, 22.0 ],
									"text" : "prepend /rain_drop/tex1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 293.0, 420.0, 136.0, 22.0 ],
									"text" : "prepend /rain_drop/tex0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 41.0, 401.0, 183.0, 22.0 ],
									"text" : "prepend /rain_drop/image_mode"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 215.0, 209.0, 22.0 ],
									"text" : "prepend /rain_drop/spawn_probability"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 5.0, 136.0, 51.2618408203125, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.dial[22]",
											"parameter_shortname" : "probability"
										}

									}
,
									"varname" : "live.dial[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 244.0, 215.0, 160.0, 22.0 ],
									"text" : "prepend /rain_drop/trail_rate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 216.0, 145.0, 51.2618408203125, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.dial[21]",
											"parameter_shortname" : "trail_rate"
										}

									}
,
									"varname" : "live.dial[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 415.0, 206.0, 168.0, 22.0 ],
									"text" : "prepend /rain_drop/fall_speed"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 382.7381591796875, 136.0, 51.2618408203125, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.dial[20]",
											"parameter_shortname" : "fall_speed"
										}

									}
,
									"varname" : "live.dial[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 624.0, 206.0, 171.0, 22.0 ],
									"text" : "prepend /rain_drop/time_scale"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 587.7381591796875, 136.0, 51.2618408203125, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.dial[15]",
											"parameter_shortname" : "time_scale"
										}

									}
,
									"varname" : "live.dial"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 515.0, 478.5238037109375, 61.0, 22.0 ],
									"text" : "getFile $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 515.0, 512.5238037109375, 101.0, 22.0 ],
									"text" : "s shader-watcher"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-150",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 623.2618408203125, 429.0, 118.0, 35.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 87.0, 49.0, 118.0, 35.0 ],
									"text" : "rain_drop/mojave.frag"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-131",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 474.0, 440.0, 79.0, 22.0 ],
									"text" : "r shader_text"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-129",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 623.2618408203125, 478.5238037109375, 36.0, 22.0 ],
									"text" : "route"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-146",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 623.2618408203125, 514.0, 193.0, 22.0 ],
									"text" : "prepend /rain_drop/main_fragment"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-142",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 658.5, 390.0, 150.0, 20.0 ],
									"text" : "shader_selector"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-126",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "shader_select.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 623.2618408203125, 388.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 56.0, 48.0, 24.0, 24.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 623.2618408203125, 549.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 1 ],
									"order" : 0,
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"order" : 1,
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"source" : [ "obj-129", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 0 ],
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 1 ],
									"order" : 0,
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 1,
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"order" : 1,
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"order" : 0,
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"order" : 2,
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 1 ],
									"order" : 0,
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"order" : 1,
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 765.0, 228.0, 69.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 267.2618408203125, 119.380950927734375, 69.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p RainDrop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 62.0, 425.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595186999999999,
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 459.0, 525.0, 83.0, 21.0 ],
					"text" : "savewindow 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 85.0, 501.0, 291.0, 22.0 ],
					"text" : "window title, window size 0 20 370 160, window exec"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 62.0, 474.0, 297.0, 22.0 ],
					"text" : "window size 0 0 370 160, window notitle, window exec"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 62.0, 544.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 50, 50, 370, 160, ";", "#Q", "window", "size", 0, 0, 370, 160, ";", "#Q", "window", "notitle", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.5, 77.380950927734375, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.5, 79.380950927734375, 81.0, 20.0 ],
					"text" : "time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 66.0, 7.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.5, 6.380950927734375, 27.0, 20.0 ],
					"text" : "fps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 339.0, 462.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 74.0, 148.0, 81.0, 22.0 ],
									"text" : "r audio_event"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-8",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 538.0, 193.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 378.0, 269.0, 195.0, 22.0 ],
									"text" : "prepend /mesh_chain/noise_power"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 100.0, 159.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 72.0, 227.0, 203.0, 22.0 ],
									"text" : "prepend /mesh_chain/remove_chain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 2,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 134.0, 850.0, 1331.0, 274.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 4,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 865.0, 54.0, 33.0, 22.0 ],
													"text" : "* 10."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 614.0, 74.0, 29.5, 22.0 ],
													"text" : "+"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 913.0, 20.0, 55.0, 22.0 ],
													"text" : "r volume"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 821.0, 163.0, 40.0, 22.0 ],
													"text" : "* 100."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 822.0, 127.0, 40.0, 22.0 ],
													"text" : "* 100."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "float" ],
													"patching_rect" : [ 164.5, 204.0, 29.5, 22.0 ],
													"text" : "t f f"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-35",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "float" ],
													"patching_rect" : [ 46.0, 232.0, 29.5, 22.0 ],
													"text" : "t f f"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 720.0, 85.0, 35.0, 22.0 ],
													"text" : "clear"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 593.0, -27.0, 18.0, 22.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 630.0, -21.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 578.7381591796875, 223.0, 27.0, 22.0 ],
													"text" : "cos"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 628.476318359375, 219.0, 24.0, 22.0 ],
													"text" : "sin"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 4,
													"outlettype" : [ "int", "", "", "int" ],
													"patching_rect" : [ 593.0, 47.0, 79.0, 22.0 ],
													"text" : "counter 1000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 593.0, 20.0, 56.0, 22.0 ],
													"text" : "metro 20"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 593.0, -3.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"addpoints_with_curve" : [ 0.0, 0.0, 0, 0.0, 208.649945682322482, 5.366545633836226, 0, 0.0, 403.91621787167162, 1.141818219965155, 0, 0.0, 551.845211954511797, 1.141818219965155, 0, 0.0, 824.03456106693784, 3.082909193905917, 0, 0.0, 1000.0, 6.28000020980835, 0, 0.0 ],
													"id" : "obj-28",
													"maxclass" : "function",
													"mode" : 1,
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "float", "", "", "bang" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 604.7381591796875, 127.0, 181.0, 80.0 ],
													"range" : [ 0.0, 6.28000020980835 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_type" : 3,
															"parameter_longname" : "function[9]",
															"parameter_invisible" : 1,
															"parameter_shortname" : "function"
														}

													}
,
													"varname" : "function[1]"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-29",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "f3pb.maxpat",
													"numinlets" : 3,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 872.7381591796875, 125.0, 155.0, 24.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 872.7381591796875, 199.0, 67.0, 22.0 ],
													"text" : "s osc-send"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 891.476318359375, 170.0, 185.0, 22.0 ],
													"text" : "prepend /mesh_chain/cam/lookat"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 185.0, 70.0, 35.0, 22.0 ],
													"text" : "clear"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.5, 259.0, 118.0, 22.0 ],
													"text" : "expr $f1*0.3+$f2*0.7"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 164.5, 246.0, 118.0, 22.0 ],
													"text" : "expr $f1*0.3+$f2*0.7"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "live.dial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 329.0, 15.0, 41.0, 48.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_type" : 0,
															"parameter_unitstyle" : 0,
															"parameter_longname" : "live.dial[14]",
															"parameter_shortname" : "live.dial[13]"
														}

													}
,
													"varname" : "live.dial[1]"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 298.0, 138.0, 29.5, 22.0 ],
													"text" : "* 2."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 272.0, 74.0, 29.5, 22.0 ],
													"text" : "* 2."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 54.7381591796875, 0.0, 18.0, 22.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 91.7381591796875, 6.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 43.7381591796875, 208.0, 27.0, 22.0 ],
													"text" : "cos"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 93.476318359375, 204.0, 24.0, 22.0 ],
													"text" : "sin"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 4,
													"outlettype" : [ "int", "", "", "int" ],
													"patching_rect" : [ 54.7381591796875, 74.0, 79.0, 22.0 ],
													"text" : "counter 1000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 54.7381591796875, 47.0, 56.0, 22.0 ],
													"text" : "metro 20"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 54.7381591796875, 24.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"addpoints_with_curve" : [ 0.0, 0.0, 0, 0.0, 1000.0, 6.28000020980835, 0, 0.0 ],
													"id" : "obj-19",
													"maxclass" : "function",
													"mode" : 1,
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "float", "", "", "bang" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 54.7381591796875, 105.0, 181.0, 80.0 ],
													"range" : [ 0.0, 6.28000020980835 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_type" : 3,
															"parameter_longname" : "function[8]",
															"parameter_invisible" : 1,
															"parameter_shortname" : "function"
														}

													}
,
													"varname" : "function"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-33",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "f3pb.maxpat",
													"numinlets" : 3,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 337.7381591796875, 110.0, 155.0, 24.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 337.7381591796875, 184.0, 67.0, 22.0 ],
													"text" : "s osc-send"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 356.476318359375, 155.0, 180.0, 22.0 ],
													"text" : "prepend /mesh_chain/cam/updir"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 1 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"order" : 1,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 1 ],
													"order" : 0,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"order" : 0,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"order" : 1,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 1 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"order" : 1,
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"order" : 0,
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 2 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-35", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 1 ],
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-36", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"order" : 1,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 1 ],
													"order" : 0,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 1 ],
													"order" : 0,
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 1,
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 1 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 380.5, 360.0, 84.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 112.2618408203125, 73.0, 90.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p cam_control"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-15",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 235.0, 126.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 157.0, 192.0, 169.0, 22.0 ],
									"text" : "prepend /mesh_chain/move_z"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 306.0, 192.0, 180.0, 22.0 ],
									"text" : "prepend /mesh_chain/set_mode"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"items" : [ "LINES", ",", "LINE_STRIP", ",", "TRIANGLES", ",", "RANDOM" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 424.0, 119.0, 100.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 54.0, 192.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 63.0, 251.0, 183.0, 22.0 ],
									"text" : "prepend /mesh_chain/add_chain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 63.0, 297.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 14.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 765.0, 187.676193237304688, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 267.2618408203125, 95.380950927734375, 79.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p MeshChain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 697.0, 446.0, 948.0, 715.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 723.0, 58.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 715.0, 488.0, 42.0, 22.0 ],
									"text" : "+ 100."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 309.0, 491.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 722.0, 462.0, 47.0, 22.0 ],
									"text" : "* 1000."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 722.0, 349.0, 39.0, 95.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[25]",
											"parameter_shortname" : "live.slider[25]"
										}

									}
,
									"varname" : "live.slider"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 683.0, 230.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 660.0, 244.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.dial[13]",
											"parameter_shortname" : "live.dial[2]"
										}

									}
,
									"varname" : "live.dial[10]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 576.0, 392.0, 97.0, 22.0 ],
									"text" : "expr $f1*30.+10."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 718.0, 212.0, 81.0, 22.0 ],
									"text" : "r audio_event"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 873.5, 449.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.dial[12]",
											"parameter_shortname" : "live.dial[10]"
										}

									}
,
									"varname" : "live.dial[7]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 830.5, 449.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.dial[11]",
											"parameter_shortname" : "live.dial[10]"
										}

									}
,
									"varname" : "live.dial[8]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 787.5, 449.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.dial[10]",
											"parameter_shortname" : "live.dial[10]"
										}

									}
,
									"varname" : "live.dial[9]"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-20",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 653.7618408203125, 491.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 576.0, 418.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 489.7618408203125, 655.0, 47.0, 22.0 ],
									"text" : "* 1000."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 493.5, 632.0, 27.0, 22.0 ],
									"text" : "cos"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 543.2381591796875, 628.0, 24.0, 22.0 ],
									"text" : "sin"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 543.5, 655.0, 47.0, 22.0 ],
									"text" : "* 1000."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 504.5, 498.0, 79.0, 22.0 ],
									"text" : "counter 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 504.5, 471.0, 56.0, 22.0 ],
									"text" : "metro 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 504.5, 441.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"addpoints_with_curve" : [ 0.0, 0.0, 0, 0.0, 133.136094674556205, 4.224727413871071, 2, 0.0, 248.520710059171591, 6.28000020980835, 0, 0.0, 251.479289940828409, 6.28000020980835, 0, 0.0, 452.662721893491153, 2.397818261926824, 0, 0.0, 541.420118343195213, 0.0, 0, 0.0, 689.349112426035504, 0.456727287986062, 0, 0.0, 784.023668639053199, 1.027636397968639, 0, 0.0, 825.443786982248525, 2.51200008392334, 0, 0.0, 829.951720830251475, 6.28000020980835, 0, 0.0, 967.455621301775182, 0.0, 0, 0.0, 1000.0, 6.28000020980835, 2, 0.0 ],
									"id" : "obj-32",
									"maxclass" : "function",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "float", "", "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 266.5, 521.0, 181.0, 80.0 ],
									"range" : [ 0.0, 6.28000020980835 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 3,
											"parameter_longname" : "function[7]",
											"parameter_invisible" : 1,
											"parameter_shortname" : "function"
										}

									}
,
									"varname" : "function"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-43",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "f3pb.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 787.5, 534.0, 155.0, 24.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 787.5, 608.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 787.5, 579.0, 201.0, 22.0 ],
									"text" : "prepend /feedback_obj/cam/position"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 666.0, 158.0, 55.0, 22.0 ],
									"text" : "r volume"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 506.0, 87.0, 29.5, 22.0 ],
									"text" : "8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 506.0, 17.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[15]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[7]"
										}

									}
,
									"varname" : "toggle[8]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 506.0, 49.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 506.0, 50.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 454.0, 87.0, 29.5, 22.0 ],
									"text" : "7"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 454.0, 17.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[14]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[7]"
										}

									}
,
									"varname" : "toggle[7]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 454.0, 49.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 454.0, 50.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 402.0, 87.0, 29.5, 22.0 ],
									"text" : "6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 402.0, 17.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[13]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[7]"
										}

									}
,
									"varname" : "toggle[6]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 402.0, 49.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 402.0, 50.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 350.0, 87.0, 29.5, 22.0 ],
									"text" : "5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 350.0, 17.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[12]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[7]"
										}

									}
,
									"varname" : "toggle[5]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 350.0, 49.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 350.0, 50.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 298.0, 87.0, 29.5, 22.0 ],
									"text" : "4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 298.0, 17.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[11]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[7]"
										}

									}
,
									"varname" : "toggle[4]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 298.0, 49.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 298.0, 50.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 246.0, 87.0, 29.5, 22.0 ],
									"text" : "3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 246.0, 17.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[10]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[7]"
										}

									}
,
									"varname" : "toggle[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 246.0, 49.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 246.0, 50.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 194.0, 87.0, 29.5, 22.0 ],
									"text" : "2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 194.0, 17.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[9]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[7]"
										}

									}
,
									"varname" : "toggle[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 194.0, 49.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 194.0, 50.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 142.0, 87.0, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 142.0, 17.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[8]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[7]"
										}

									}
,
									"varname" : "toggle[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 142.0, 49.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 136.0, 32.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 790.0, 309.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[7]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[7]"
										}

									}
,
									"varname" : "toggle"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 142.0, 340.0, 81.0, 22.0 ],
									"text" : "pak 0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 130.0, 175.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 130.0, 175.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 1,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.dial[9]",
											"parameter_shortname" : "live.dial[6]"
										}

									}
,
									"varname" : "live.dial[6]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 93.0, 175.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 93.0, 175.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 1,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.dial[8]",
											"parameter_shortname" : "live.dial[6]"
										}

									}
,
									"varname" : "live.dial[5]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 56.0, 175.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 56.0, 175.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 1,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.dial[7]",
											"parameter_shortname" : "live.dial[6]"
										}

									}
,
									"varname" : "live.dial[4]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 173.0, 175.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 173.0, 175.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 1,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.dial[6]",
											"parameter_shortname" : "live.dial[6]"
										}

									}
,
									"varname" : "live.dial[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 566.0, 304.0, 81.0, 22.0 ],
									"text" : "pak 0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 640.0, 230.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 640.0, 230.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.dial[5]",
											"parameter_shortname" : "live.dial[2]"
										}

									}
,
									"varname" : "live.dial[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 597.0, 230.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 597.0, 230.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.dial[4]",
											"parameter_shortname" : "live.dial[2]"
										}

									}
,
									"varname" : "live.dial[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 554.0, 230.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 554.0, 230.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.dial[2]",
											"parameter_shortname" : "live.dial[2]"
										}

									}
,
									"varname" : "live.dial"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 259.0, 394.0, 177.0, 22.0 ],
									"text" : "70. 31. 255. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "float", "float", "float", "float" ],
									"patching_rect" : [ 249.0, 221.0, 101.0, 22.0 ],
									"text" : "unpack 0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 242.0, 308.0, 72.0, 22.0 ],
									"text" : "$2 $3 $4 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 242.0, 280.0, 87.0, 22.0 ],
									"text" : "pack 0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"compatibility" : 1,
									"id" : "obj-21",
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 231.0, 175.0, 128.0, 32.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 231.0, 175.0, 128.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 481.0, 138.0, 128.0, 32.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 481.0, 138.0, 128.0, 32.0 ],
									"saturation" : 1.0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 356.0, 297.0, 193.0, 22.0 ],
									"text" : "prepend /feedback_obj/base_color"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 212.0, 434.0, 215.0, 22.0 ],
									"text" : "prepend /feedback_obj/feedback_color"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 790.0, 341.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 194.0, 97.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 753.0, 380.0, 183.0, 22.0 ],
									"text" : "prepend /feedback_obj/clear_fbo"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"items" : [ "NONE", ",", "BOX_MESH", ",", "BOX_WIREFRAME", ",", "SPHERE_MESH", ",", "SPHERE_WIREFRAME", ",", "ABLETON_LOGO", ",", "MAX", ",", "ABLETON", ",", "WINDOW1", ",", "WINDOW2" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 18.0, 99.0, 100.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 18.0, 84.0, 100.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "NONE", "BOX_MESH", "BOX_WIREFRAME", "SPHERE_MESH", "SPHERE_WIREFRAME", "ABLETON_LOGO", "MAX", "ABLETON", "WINDOW1", "WINDOW2" ],
											"parameter_type" : 2,
											"parameter_longname" : "umenu[4]",
											"parameter_mmax" : 9.0,
											"parameter_shortname" : "umenu[4]"
										}

									}
,
									"varname" : "umenu"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 18.0, 133.0, 183.0, 22.0 ],
									"text" : "prepend /feedback_obj/draw_obj"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 108.0, 469.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 31.0, 0.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 2 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 1 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"order" : 1,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 1 ],
									"order" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 1,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"order" : 0,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 3 ],
									"source" : [ "obj-26", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 2 ],
									"source" : [ "obj-26", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 1 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 2 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"order" : 1,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"order" : 0,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 1 ],
									"source" : [ "obj-34", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 2 ],
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 3 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 1 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 2 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 1 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 3 ],
									"source" : [ "obj-75", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-78", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"order" : 3,
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"order" : 2,
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"order" : 1,
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"order" : 4,
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"order" : 8,
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"order" : 7,
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"order" : 6,
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"order" : 5,
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"order" : 0,
									"source" : [ "obj-84", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 765.0, 147.352386474609375, 90.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 267.2618408203125, 71.380950927734375, 90.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p FeedbackObj"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.709803921568627, 0.196078431372549, 1.0 ],
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 343.0, 288.0, 455.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 15,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-216",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 258.75, 97.5, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 258.75, 85.0, 19.5, 20.0 ],
									"text" : "R"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-215",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 327.5, 104.5, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 164.25, 85.0, 19.5, 20.0 ],
									"text" : "L"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-212",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.5, 176.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 14.0, 9.0, 50.5, 20.0 ],
									"text" : "power"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-211",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 93.0, 214.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.5, 87.0, 58.0, 20.0 ],
									"text" : "mute out"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-209",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 101.75, 279.454833984375, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-205",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 178.0, 279.454833984375, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 62.5, 85.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-203",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 57.75, 279.454833984375, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-200",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 2,
									"numoutlets" : 5,
									"orientation" : 1,
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 23.5, 50.0, 134.0, 47.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.0, 35.5, 146.0, 47.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 4,
											"parameter_mmin" : -70.0,
											"parameter_longname" : "live.gain~[2]",
											"parameter_mmax" : 6.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_shortname" : "input vol"
										}

									}
,
									"varname" : "live.gain~[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-197",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 109.0, -2.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 87.0, 7.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-192",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 463.0, 451.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 234.0, 350.5, 34.0, 20.0 ],
									"text" : "auto"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"id" : "obj-188",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1064.0, 310.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 234.0, 366.5, 33.0, 33.0 ],
									"uncheckedcolor" : [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-186",
									"int" : 1,
									"maxclass" : "gswitch2",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 901.0, 360.249298095703125, 39.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-185",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 942.0, 395.3575439453125, 31.0, 22.0 ],
									"text" : "* -1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-181",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "" ],
									"patching_rect" : [ 845.0, 329.2410888671875, 84.0, 22.0 ],
									"text" : "compel0_1 30"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-180",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 739.0, 125.0, 71.0, 22.0 ],
									"text" : "window title"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-179",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 702.0, 70.0, 77.0, 22.0 ],
									"text" : "window exec"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-176",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 647.0, 125.0, 84.0, 22.0 ],
									"text" : "window notitle"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-173",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 625.0, 191.0, 163.0, 22.0 ],
									"text" : "window size 0 375 288 841"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 483.0, 74.0, 89.0, 21.0 ],
									"text" : "window getsize"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-171",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 487.0, 131.962005615234375, 67.0, 22.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-169",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "" ],
									"patching_rect" : [ 23.5, 890.2410888671875, 84.0, 22.0 ],
									"text" : "compel0_1 30"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Medium Regular",
									"fontsize" : 11.0,
									"id" : "obj-146",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 77.35455322265625, 938.9429931640625, 140.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 83.5, 416.5, 43.0, 20.0 ],
									"text" : "volume"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"embed" : 1,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"extract" : 1,
									"id" : "obj-144",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "bp.Wavefolder.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 2,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 79.0, 501.0, 487.0 ],
										"bglocked" : 0,
										"openinpresentation" : 1,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 1,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-3",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.236205999999999, 64.0, 229.0, 33.0 ],
													"text" : "## Waveshape a signal by amplifying and wrapping the peaks back down ## "
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetextcolor" : [ 1.0, 1.0, 1.0, 0.57 ],
													"activetextoncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
													"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.78 ],
													"bordercolor" : [ 0.0, 0.019608, 0.078431, 0.37 ],
													"id" : "obj-1",
													"maxclass" : "live.text",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 149.23620600000001, 301.691772000000014, 40.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 3.166666030883789, 0.0, 38.0, 14.764644622802734 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_enum" : [ "val1", "val2" ],
															"parameter_type" : 0,
															"parameter_unitstyle" : 0,
															"parameter_longname" : "Bypass",
															"parameter_mmax" : 1.0,
															"parameter_initial" : [ 0.0 ],
															"parameter_shortname" : "Bypass"
														}

													}
,
													"text" : "bypass",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"texton" : "bypass",
													"varname" : "bypass"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 564.236206000000038, 274.0, 112.0, 22.0 ],
													"text" : "scale~ 1 5 5 1 0.25"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 423.236205999999981, 323.0, 160.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 3,
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-11",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 359.0, 244.754271999999986, 54.0, 24.0 ],
													"text" : "wrap"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 149.23620600000001, 339.754272000000014, 32.5, 22.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 149.23620600000001, 382.754272000000014, 567.0, 22.0 ],
													"text" : "selector~ 2 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "signal output",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 149.23620600000001, 428.754272000000014, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 472.236205999999981, 191.254271999999986, 33.0, 22.0 ],
													"text" : "sig~"
												}

											}
, 											{
												"box" : 												{
													"activedialcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activefgdialcolor" : [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 1.0 ],
													"activeneedlecolor" : [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 1.0 ],
													"dialcolor" : [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 1.0 ],
													"fgdialcolor" : [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 1.0 ],
													"fontname" : "Ableton Sans Medium Regular",
													"id" : "obj-29",
													"maxclass" : "live.dial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 472.236205999999981, 122.883910999999998, 45.0, 48.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 16.764644622802734, 44.0, 48.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_type" : 0,
															"parameter_unitstyle" : 1,
															"parameter_mmin" : 1.0,
															"parameter_longname" : "Range",
															"parameter_initial_enable" : 1,
															"parameter_mmax" : 5.0,
															"parameter_initial" : [ 1.0 ],
															"parameter_shortname" : "wavefolder"
														}

													}
,
													"textcolor" : [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 1.0 ],
													"varname" : "Range"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 423.236205999999981, 244.754271999999986, 68.0, 22.0 ],
													"text" : "%~ 0"
												}

											}
, 											{
												"box" : 												{
													"comment" : "signal input",
													"id" : "obj-23",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 423.236205999999981, 46.883910999999998, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Ableton Sans Bold Regular",
													"fontsize" : 9.0,
													"id" : "obj-8",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 98.236205999999996, 436.754272000000014, 37.0, 17.0 ],
													"text" : "Signal",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Ableton Sans Bold Regular",
													"fontsize" : 9.0,
													"id" : "obj-19",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 367.5, 46.883910999999998, 37.0, 17.0 ],
													"text" : "Signal",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-135",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 106.315490999999994, 18.711639000000002, 37.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 0.0, 44.333332061767578, 14.338157653808594 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"order" : 1,
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 2 ],
													"midpoints" : [ 432.736205999999981, 110.627135999999993, 706.736206000000038, 110.627135999999993 ],
													"order" : 0,
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 1 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 1 ],
													"order" : 1,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"order" : 0,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"source" : [ "obj-54", 0 ]
												}

											}
 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
									}
,
									"patching_rect" : [ 23.5, 604.73162841796875, 53.0, 66.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 46.99041748046875, 351.5, 47.0, 66.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"embed" : 1,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"extract" : 1,
									"id" : "obj-126",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "bp.Classroom Filter.maxpat",
									"numinlets" : 4,
									"numoutlets" : 1,
									"offset" : [ -100.0, 0.0 ],
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 2,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 79.0, 885.0, 606.0 ],
										"bglocked" : 0,
										"openinpresentation" : 1,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 1,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-33",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 231.93994140625, 173.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 250.0, 214.0, 88.0, 22.0 ],
													"text" : "zoomfactor 0.5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 244.0, 253.0, 67.0, 22.0 ],
													"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
													"text" : "thispatcher"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 864.0, 619.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 835.0, 662.0, 88.0, 22.0 ],
													"text" : "zoomfactor 0.5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 837.0, 692.0, 67.0, 22.0 ],
													"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
													"text" : "thispatcher"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 5,
													"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
													"patching_rect" : [ 367.773254000000009, 1293.670409999999947, 66.0, 22.0 ],
													"text" : "filtercoeff~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 239.439941000000005, 289.845551, 34.0, 22.0 ],
													"text" : "ftom"
												}

											}
, 											{
												"box" : 												{
													"autoout" : 1,
													"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
													"curvecolor" : [ 0.949154, 0.938325, 1.0, 0.62 ],
													"domain" : [ 0.0, 22050.0 ],
													"fontface" : 1,
													"fontname" : "Arial",
													"hcurvecolor" : [ 0.278431, 0.839216, 1.0, 0.0 ],
													"id" : "obj-37",
													"ignoreclick" : 1,
													"linmarkers" : [ 0.0, 11025.0, 16537.5 ],
													"logmarkers" : [ 0.0, 100.0, 1000.0, 10000.0 ],
													"markercolor" : [ 0.509804, 0.509804, 0.509804, 0.0 ],
													"maxclass" : "filtergraph~",
													"nfilters" : 1,
													"numinlets" : 8,
													"numoutlets" : 7,
													"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 32.939940999999997, 874.170409999999947, 360.0, 155.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 100.5, 42.838638305664062, 360.0, 155.0 ],
													"setfilter" : [ 0, 3, 0, 0, 0, 11175.3037109375, 1.0, 6.175745964050293, 0.000099999997474, 22050.0, 0.000099999997474, 16.0, 0.5, 25.0 ],
													"textcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-35",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 239.439941000000005, 724.670409999999947, 83.0, 22.0 ],
													"text" : "snapshot~ 15"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 21.439941000000001, 60.448700000000002, 321.0, 33.0 ],
													"text" : "## Two-pole multimode filter with large graphical interface and spectral display ## "
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetextcolor" : [ 1.0, 1.0, 1.0, 0.57 ],
													"activetextoncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
													"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.78 ],
													"bordercolor" : [ 0.0, 0.019608, 0.078431, 0.37 ],
													"id" : "obj-26",
													"maxclass" : "live.text",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 36.606628000000001, 1441.24731399999996, 43.0, 19.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 469.9056396484375, 180.838638305664062, 81.25, 17.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_enum" : [ "val1", "val2" ],
															"parameter_defer" : 1,
															"parameter_type" : 2,
															"parameter_longname" : "spectral",
															"parameter_mmax" : 1.0,
															"parameter_initial" : [ 0.0 ],
															"parameter_shortname" : "spectral"
														}

													}
,
													"text" : "spectral",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"texton" : "spectral",
													"varname" : "spectral"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 36.606628000000001, 1518.670409999999947, 61.0, 22.0 ],
													"text" : "gate~ 1 0"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.941176, 0.941176, 0.941176, 0.0 ],
													"fgcolor" : [ 1.0, 1.0, 1.0, 0.32 ],
													"id" : "obj-12",
													"ignoreclick" : 1,
													"logfreq" : 1,
													"markercolor" : [ 0.627451, 0.627451, 0.627451, 0.0 ],
													"maxclass" : "spectroscope~",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 36.606628000000001, 1563.24731399999996, 300.0, 100.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 100.5, 42.838638305664062, 360.0, 155.0 ]
												}

											}
, 											{
												"box" : 												{
													"activedialcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activefgdialcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"activeneedlecolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"id" : "obj-98",
													"maxclass" : "live.dial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 749.939940999999976, 795.908081000000038, 44.0, 48.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 4.0, 152.5, 44.0, 48.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_type" : 0,
															"parameter_unitstyle" : 1,
															"parameter_exponent" : 2.0,
															"parameter_longname" : "Gain",
															"parameter_initial_enable" : 1,
															"parameter_mmax" : 16.0,
															"parameter_initial" : [ 1 ],
															"parameter_shortname" : "Gain"
														}

													}
,
													"textcolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"varname" : "Gain"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"hidden" : 1,
													"id" : "obj-97",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 617.439940999999976, 1052.170409999999947, 48.0, 23.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"activedialcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activefgdialcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"activeneedlecolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"id" : "obj-95",
													"maxclass" : "live.dial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 690.511352999999986, 795.908081000000038, 44.0, 48.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 4.0, 42.838638305664062, 44.0, 48.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_type" : 0,
															"parameter_unitstyle" : 3,
															"parameter_mmin" : 20.0,
															"parameter_exponent" : 4.0,
															"parameter_longname" : "Freq",
															"parameter_initial_enable" : 1,
															"parameter_mmax" : 20000.0,
															"parameter_initial" : [ 500 ],
															"parameter_shortname" : "Freq"
														}

													}
,
													"textcolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"varname" : "Freq"
												}

											}
, 											{
												"box" : 												{
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"id" : "obj-59",
													"maxclass" : "live.tab",
													"num_lines_patching" : 7,
													"num_lines_presentation" : 7,
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 419.814940999999976, 665.908081000000038, 73.25, 177.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 469.9056396484375, 42.838638305664062, 81.25, 131.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_enum" : [ "lowpass", "highpass", "bandpass", "bandstop", "peaknotch", "lowshelf", "highshelf" ],
															"parameter_type" : 2,
															"parameter_unitstyle" : 0,
															"parameter_longname" : "filter_mode",
															"parameter_initial_enable" : 1,
															"parameter_initial" : [ 0.0 ],
															"parameter_shortname" : "filter_mode"
														}

													}
,
													"varname" : "filter_mode"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"hidden" : 1,
													"id" : "obj-27",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 560.606628000000001, 1052.170409999999947, 48.0, 23.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"hidden" : 1,
													"id" : "obj-29",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 503.773254000000009, 1052.170409999999947, 48.0, 23.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"autoout" : 1,
													"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"curvecolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"domain" : [ 0.0, 22050.0 ],
													"fontface" : 1,
													"fontname" : "Arial",
													"hcurvecolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"id" : "obj-36",
													"linmarkers" : [ 0.0, 11025.0, 16537.5 ],
													"logmarkers" : [ 0.0, 100.0, 1000.0, 10000.0 ],
													"markercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
													"maxclass" : "filtergraph~",
													"nfilters" : 1,
													"numinlets" : 8,
													"numoutlets" : 7,
													"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 446.939940999999976, 874.170409999999947, 360.0, 155.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 100.5, 42.838638305664062, 360.0, 155.0 ],
													"setfilter" : [ 0, 3, 0, 0, 0, 10959.076171875, 1.0, 6.175745964050293, 0.000099999997474, 22050.0, 0.000099999997474, 16.0, 0.5, 25.0 ],
													"textcolor" : [ 1.0, 1.0, 1.0, 0.47 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-49",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 304.033690999999976, 1329.670409999999947, 120.5, 23.0 ],
													"text" : "biquad~"
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubblepoint" : 0.1,
													"bubbleside" : 3,
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-24",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 525.439940999999976, 118.619140999999999, 109.0, 64.0 ],
													"text" : "this scales the dB value to linear amplitude"
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 3,
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-23",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 525.439940999999976, 78.119140999999999, 109.0, 37.0 ],
													"text" : "this converts 0-100 to dB"
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-20",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 717.439940999999976, 399.315552000000025, 109.0, 37.0 ],
													"text" : "12 semitones in an oct"
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-22",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 717.439940999999976, 353.315552000000025, 109.0, 37.0 ],
													"text" : "add 5v to bring to 0-10v range"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 637.627440999999976, 118.619140999999999, 41.0, 22.0 ],
													"text" : "dbtoa"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 637.627440999999976, 86.619140999999999, 120.0, 22.0 ],
													"text" : "expr ($i1 - 100) * 0.6"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 814.189940999999976, 201.408051, 41.0, 22.0 ],
													"text" : "dbtoa"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 814.189940999999976, 169.408051, 120.0, 22.0 ],
													"text" : "expr ($i1 - 100) * 0.6"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1171.18994100000009, 346.65484600000002, 41.0, 22.0 ],
													"text" : "dbtoa"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1171.18994100000009, 314.65484600000002, 120.0, 22.0 ],
													"text" : "expr ($i1 - 100) * 0.6"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Ableton Sans Bold Regular",
													"fontsize" : 9.0,
													"id" : "obj-74",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 717.439940999999976, 281.815552000000025, 63.0, 17.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 313.6343994140625, 0.0, 63.0, 17.0 ],
													"text" : "CV2 (1v/oct)",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 672.439940999999976, 437.15484600000002, 38.0, 22.0 ],
													"text" : "-~ 60"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-46",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 460.033690999999976, 384.65484600000002, 38.0, 22.0 ],
													"text" : "-~ 60"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-92",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 239.439941000000005, 537.586670000000026, 775.0, 22.0 ],
													"text" : "+~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-91",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 239.439941000000005, 485.747374999999977, 452.0, 22.0 ],
													"text" : "+~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-90",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 239.439941000000005, 434.747344999999996, 239.59375, 22.0 ],
													"text" : "+~"
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-89",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 510.439940999999976, 346.15484600000002, 109.0, 37.0 ],
													"text" : "12 semitones in an oct"
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-88",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 510.439940999999976, 300.15484600000002, 109.0, 37.0 ],
													"text" : "add 5v to bring to 0-10v range"
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-87",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1040.93994100000009, 376.65484600000002, 102.0, 64.0 ],
													"text" : "convert 0-5v to 0-120 range of semitones"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-84",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 995.439940999999976, 391.65484600000002, 39.0, 22.0 ],
													"text" : "*~ 24"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-83",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 995.439940999999976, 333.345551, 56.0, 22.0 ],
													"text" : "clip~ 0 5"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-81",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 672.439940999999976, 407.815552000000025, 39.0, 22.0 ],
													"text" : "*~ 12"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-82",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 672.439940999999976, 369.815552000000025, 35.0, 22.0 ],
													"text" : "+~ 5"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-78",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 460.033690999999976, 346.65484600000002, 39.0, 22.0 ],
													"text" : "*~ 12"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-76",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 460.033690999999976, 308.65484600000002, 35.0, 22.0 ],
													"text" : "+~ 5"
												}

											}
, 											{
												"box" : 												{
													"annotation" : "1v/oct",
													"comment" : "",
													"id" : "obj-60",
													"index" : 4,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 995.439940999999976, 289.845551, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 995.439940999999976, 471.747344999999996, 194.75, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"activedialcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activefgdialcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"activeneedlecolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"id" : "obj-63",
													"maxclass" : "live.dial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 1171.18994100000009, 255.247344999999996, 44.0, 48.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 48.0, 152.5, 44.0, 48.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_type" : 0,
															"parameter_unitstyle" : 5,
															"parameter_longname" : "CV3",
															"parameter_initial_enable" : 1,
															"parameter_mmax" : 100.0,
															"parameter_initial" : [ 0.0 ],
															"parameter_shortname" : "CV3"
														}

													}
,
													"textcolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"varname" : "CV3"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-64",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1171.18994100000009, 376.65484600000002, 43.0, 23.0 ],
													"text" : "$1 20"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-65",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 1171.18994100000009, 417.15484600000002, 53.0, 23.0 ],
													"text" : "line~ 0."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-58",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 239.439941000000005, 646.74731399999996, 82.0, 22.0 ],
													"text" : "clip~ 0 22000"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-53",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 460.033690999999976, 237.315551999999997, 196.59375, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"activedialcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activefgdialcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"activeneedlecolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"id" : "obj-54",
													"maxclass" : "live.dial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 637.627440999999976, 18.711639000000002, 44.0, 48.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 48.0, 42.838638305664062, 44.0, 48.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_type" : 0,
															"parameter_unitstyle" : 5,
															"parameter_longname" : "CV1",
															"parameter_initial_enable" : 1,
															"parameter_mmax" : 100.0,
															"parameter_initial" : [ 0.0 ],
															"parameter_shortname" : "CV1"
														}

													}
,
													"textcolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"varname" : "CV1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-56",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 637.627440999999976, 153.119141000000013, 43.0, 23.0 ],
													"text" : "$1 20"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-57",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 637.627440999999976, 193.619141000000013, 53.0, 23.0 ],
													"text" : "line~ 0."
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-47",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 460.033690999999976, 183.08914200000001, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"annotation" : "1v/oct",
													"comment" : "",
													"id" : "obj-48",
													"index" : 3,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 672.439940999999976, 277.815552000000025, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-50",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 672.439940999999976, 322.315552000000025, 160.75, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"activedialcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activefgdialcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"activeneedlecolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"id" : "obj-51",
													"maxclass" : "live.dial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 814.189940999999976, 99.408051, 44.0, 48.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 48.0, 97.669319152832031, 44.0, 48.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_type" : 0,
															"parameter_unitstyle" : 5,
															"parameter_longname" : "CV2",
															"parameter_initial_enable" : 1,
															"parameter_mmax" : 100.0,
															"parameter_initial" : [ 0.0 ],
															"parameter_shortname" : "CV2"
														}

													}
,
													"textcolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"varname" : "CV2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-67",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 814.189940999999976, 237.315551999999997, 43.0, 23.0 ],
													"text" : "$1 20"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-68",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 814.189940999999976, 277.815552000000025, 53.0, 23.0 ],
													"text" : "line~ 0."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-69",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 239.439941000000005, 340.65484600000002, 43.0, 23.0 ],
													"text" : "$1 20"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-70",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 239.439941000000005, 376.65484600000002, 53.0, 23.0 ],
													"text" : "line~ 0."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-71",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 239.439941000000005, 600.586670000000026, 41.0, 22.0 ],
													"text" : "mtof~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Ableton Sans Bold Regular",
													"fontsize" : 9.0,
													"id" : "obj-42",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1033.03369100000009, 289.845551, 55.0, 17.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 499.6343994140625, 0.0, 55.0, 17.0 ],
													"text" : "CV3 (0-5v)",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Ableton Sans Bold Regular",
													"fontsize" : 9.0,
													"id" : "obj-41",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 382.939940999999976, 183.08914200000001, 63.0, 17.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 149.0, 0.0, 63.0, 17.0 ],
													"text" : "CV1 (1v/oct)",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 215.783691000000005, 1375.74731399999996, 32.5, 22.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 215.783691000000005, 1420.74731399999996, 195.5, 22.0 ],
													"text" : "selector~ 2 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-6",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 215.783691000000005, 1468.74731399999996, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"activedialcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activefgdialcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"activeneedlecolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"id" : "obj-11",
													"maxclass" : "live.dial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 813.689940999999976, 795.908081000000038, 44.0, 48.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 4.0, 97.669319152832031, 44.0, 48.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_type" : 0,
															"parameter_unitstyle" : 1,
															"parameter_exponent" : 1.5,
															"parameter_longname" : "Resonance",
															"parameter_initial_enable" : 1,
															"parameter_mmax" : 25.0,
															"parameter_initial" : [ 0.75 ],
															"parameter_shortname" : "Res"
														}

													}
,
													"textcolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"varname" : "Resonance"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 304.033690999999976, 1375.74731399999996, 36.0, 22.0 ],
													"text" : "*~ 5."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 304.033690999999976, 1256.270995999999968, 42.0, 22.0 ],
													"text" : "*~ 0.2"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetextcolor" : [ 1.0, 1.0, 1.0, 0.57 ],
													"activetextoncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
													"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.78 ],
													"bordercolor" : [ 0.0, 0.019608, 0.078431, 0.37 ],
													"id" : "obj-55",
													"maxclass" : "live.text",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 215.783691000000005, 1334.24731399999996, 43.0, 19.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 496.56494140625, 19.0, 52.0, 17.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_enum" : [ "val1", "val2" ],
															"parameter_defer" : 1,
															"parameter_type" : 2,
															"parameter_longname" : "power",
															"parameter_mmax" : 1.0,
															"parameter_initial" : [ 0.0 ],
															"parameter_shortname" : "power"
														}

													}
,
													"text" : "bypass",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"texton" : "bypass",
													"varname" : "power[1]"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-39",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 303.533690999999976, 1191.24731399999996, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-40",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 21.439941000000001, 107.186310000000006, 59.5, 22.0 ],
													"restore" : 													{
														"CV1" : [ 0.0 ],
														"CV2" : [ 0.0 ],
														"CV3" : [ 0.0 ],
														"Freq" : [ 10959.076402088059695 ],
														"Gain" : [ 1.0 ],
														"Resonance" : [ 6.175746113564641 ],
														"filter_mode" : [ 2.0 ],
														"power[1]" : [ 1.0 ],
														"spectral" : [ 1.0 ]
													}
,
													"text" : "autopattr",
													"varname" : "u290001396"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Ableton Sans Bold Regular",
													"fontsize" : 9.0,
													"id" : "obj-8",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 257.033690999999976, 1482.315552000000025, 40.0, 17.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 4.0, 206.15142822265625, 40.0, 17.0 ],
													"text" : "Output",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Ableton Sans Bold Regular",
													"fontsize" : 9.0,
													"id" : "obj-19",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 249.535583000000003, 1191.24731399999996, 38.0, 17.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 2.0, 0.0, 38.0, 17.0 ],
													"text" : "Signal",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Ableton Sans Bold Regular",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 21.439941000000001, 34.448700000000002, 102.0, 17.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 2.0, 20.0, 102.0, 17.0 ],
													"text" : "CLASSROOM FILTER",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.137255, 0.145098, 0.160784, 0.65 ],
													"id" : "obj-130",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 21.439941000000001, 18.711639000000002, 37.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 37.0, 561.0, 193.15142822265625 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.367404, 0.389405, 0.430238, 1.0 ],
													"id" : "obj-131",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 65.77713, 18.711639000000002, 37.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 18.0, 561.0, 186.838638305664062 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-135",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 108.519226000000003, 18.711639000000002, 37.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 0.0, 561.0, 230.15142822265625 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 7 ],
													"order" : 0,
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 7 ],
													"order" : 2,
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 2 ],
													"order" : 1,
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 1 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-91", 1 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 0 ],
													"hidden" : 1,
													"midpoints" : [ 570.106628000000001, 1126.170409999999947, 952.416138000000046, 1126.170409999999947, 952.416138000000046, 759.670409999999947, 759.439940999999976, 759.670409999999947 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-95", 0 ],
													"hidden" : 1,
													"midpoints" : [ 513.273253999999952, 1148.170409999999947, 968.642334000000005, 1148.170409999999947, 968.642334000000005, 748.170409999999947, 700.011352999999986, 748.170409999999947 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"midpoints" : [ 248.0, 248.0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 5 ],
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"hidden" : 1,
													"source" : [ "obj-36", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"hidden" : 1,
													"order" : 0,
													"source" : [ "obj-36", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"order" : 1,
													"source" : [ "obj-36", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-97", 0 ],
													"source" : [ "obj-36", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-69", 0 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"order" : 1,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 2 ],
													"order" : 0,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-67", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 5 ],
													"source" : [ "obj-43", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 4 ],
													"source" : [ "obj-43", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 3 ],
													"source" : [ "obj-43", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 2 ],
													"source" : [ "obj-43", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 1 ],
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 1 ],
													"source" : [ "obj-46", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-53", 0 ],
													"source" : [ "obj-47", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 0 ],
													"source" : [ "obj-48", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"order" : 0,
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"order" : 1,
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-82", 0 ],
													"source" : [ "obj-50", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-76", 0 ],
													"source" : [ "obj-53", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-53", 1 ],
													"source" : [ "obj-57", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"order" : 1,
													"source" : [ "obj-58", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"order" : 0,
													"source" : [ "obj-58", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"order" : 0,
													"source" : [ "obj-59", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"order" : 2,
													"source" : [ "obj-59", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"order" : 1,
													"source" : [ "obj-59", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"source" : [ "obj-60", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-92", 1 ],
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-63", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-64", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 1 ],
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 1 ],
													"source" : [ "obj-68", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-70", 0 ],
													"source" : [ "obj-69", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 0 ],
													"source" : [ "obj-70", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 0 ],
													"source" : [ "obj-71", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-78", 0 ],
													"source" : [ "obj-76", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-46", 0 ],
													"source" : [ "obj-78", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-81", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-81", 0 ],
													"source" : [ "obj-82", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-84", 0 ],
													"source" : [ "obj-83", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"source" : [ "obj-84", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-91", 0 ],
													"source" : [ "obj-90", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-92", 0 ],
													"source" : [ "obj-91", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-71", 0 ],
													"source" : [ "obj-92", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 5 ],
													"order" : 0,
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"order" : 1,
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"midpoints" : [ 626.939940999999976, 1085.170409999999947, 907.064940999999976, 1085.170409999999947, 907.064940999999976, 784.908081000000038, 823.189940999999976, 784.908081000000038 ],
													"source" : [ "obj-97", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 6 ],
													"order" : 0,
													"source" : [ "obj-98", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 6 ],
													"order" : 2,
													"source" : [ "obj-98", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 1 ],
													"order" : 1,
													"source" : [ "obj-98", 0 ]
												}

											}
 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
									}
,
									"patching_rect" : [ 23.5, 109.701896667480469, 281.0, 106.520233154296875 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.5, 114.5, 279.0, 117.0 ],
									"varname" : "bp.Classroom Filter",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-112",
									"maxclass" : "live.button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1255.6015625, 632.454345703125, 46.0, 46.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 409.5, 32.0, 32.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "live.button",
											"parameter_mmax" : 1.0,
											"parameter_speedlim" : 10.0,
											"parameter_shortname" : "live.button"
										}

									}
,
									"varname" : "live.button"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-103",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 845.0, 155.49932861328125, 70.0, 22.0 ],
									"text" : "loadmess 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 413.0, 354.3575439453125, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 185.75, 59.0, 71.0, 20.0 ],
									"text" : "audio_bang",
									"textcolor" : [ 0.811764717102051, 0.811764717102051, 0.811764717102051, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 23.5, 744.13543701171875, 41.0, 22.0 ],
									"text" : "abs 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 195.0, 739.4111328125, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 91.0, 369.5, 48.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_longname" : "live.dial[19]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "feedback"
										}

									}
,
									"varname" : "live.dial[5]"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"extract" : 1,
									"id" : "obj-61",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "bp.Spectral.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 23.5, 462.02972412109375, 264.0, 116.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.5, 233.5, 279.0, 116.0 ],
									"varname" : "bp.Spectral",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 77.5, 343.0, 38.0, 35.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 98.0, 87.0, 55.0, 22.0 ],
									"text" : "dac~ 3 4",
									"varname" : "bp.Stereo"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 23.5, 11.0, 35.0, 22.0 ],
									"text" : "adc~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 23.5, 938.9429931640625, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 83.5, 431.317962646484375, 44.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_longname" : "live.numbox",
											"parameter_speedlim" : 30.0,
											"parameter_shortname" : "live.numbox"
										}

									}
,
									"varname" : "live.numbox"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.5, 841.5391845703125, 140.0, 22.0 ],
									"text" : "expr $f1*$f3+$f2*(1.-$f3)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 23.5, 792.8372802734375, 29.5, 22.0 ],
									"text" : "t f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 598.0, 604.73162841796875, 90.0, 22.0 ],
									"text" : "s audio_bang_l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 598.0, 563.50701904296875, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 185.75, 81.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 598.0, 524.28240966796875, 42.0, 22.0 ],
									"text" : "edge~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 598.0, 485.057830810546875, 102.0, 22.0 ],
									"text" : "thresh~ 0.005 0.1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 598.0, 445.833221435546875, 106.0, 22.0 ],
									"text" : "average~ 512 rms"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 413.0, 604.73162841796875, 91.0, 22.0 ],
									"text" : "s audio_bang_r"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 941.0, 425.898406982421875, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 145.0, 350.682037353515625, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_mmin" : -1.0,
											"parameter_longname" : "live.dial[16]",
											"parameter_mmax" : 0.01,
											"parameter_shortname" : "noise_cut"
										}

									}
,
									"varname" : "live.dial[4]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1255.6015625, 698.454345703125, 83.0, 22.0 ],
									"text" : "s audio_event"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 892.0, 425.898406982421875, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 145.0, 401.5, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 4,
											"parameter_mmin" : -20.0,
											"parameter_longname" : "live.gain~[1]",
											"parameter_mmax" : 6.0,
											"parameter_shortname" : "gain/trim"
										}

									}
,
									"varname" : "live.gain~[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1045.8671875, 529.259033203125, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 190.5, 401.5, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 4,
											"parameter_mmin" : -70.0,
											"parameter_longname" : "live.gain~",
											"parameter_mmax" : 6.0,
											"parameter_shortname" : "note_on"
										}

									}
,
									"varname" : "live.gain~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 195.0, 347.249298095703125, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 3.99041748046875, 369.5, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_longname" : "live.dial[18]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "noise cut"
										}

									}
,
									"varname" : "live.dial[2]"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-106",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 23.5, 414.32781982421875, 131.0, 21.0 ],
									"text" : "pfft~ ngate~ 1024 2"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-75",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 941.0, 635.60992431640625, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 845.0, 215.3623046875, 56.0, 22.0 ],
									"text" : "metro 25"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 963.0, 209.924026489257812, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 190.5, 351.5, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_longname" : "live.dial[17]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "amp_vol"
										}

									}
,
									"varname" : "live.dial[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 845.0, 185.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1311.796875, 645.454345703125, 72.0, 20.0 ],
									"text" : "audio event"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1293.6015625, 560.30950927734375, 26.0, 20.0 ],
									"text" : "ms"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1187.760986328125, 560.9586181640625, 26.0, 20.0 ],
									"text" : "ms"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-54",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 941.0, 542.259033203125, 67.0, 22.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1226.43994140625, 538.30950927734375, 80.0, 20.0 ],
									"text" : "Min. Off Time"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1121.5782470703125, 538.30950927734375, 109.0, 20.0 ],
									"text" : "Min. Note Duration"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "number",
									"minimum" : 0,
									"mousefilter" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1255.6015625, 560.30950927734375, 36.0, 22.0 ],
									"triscale" : 0.9,
									"varname" : "offtime"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "number",
									"minimum" : 20,
									"mousefilter" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1151.27294921875, 560.9586181640625, 36.0, 22.0 ],
									"triscale" : 0.9,
									"varname" : "mindur"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1011.8671875, 506.90966796875, 109.0, 20.0 ],
									"text" : "Note-on Threshold"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "float", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 2,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 81.0, 554.0, 598.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 1,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "float", "bang", "bang", "bang" ],
													"patching_rect" : [ 251.211014000000006, 428.102782999999988, 51.0, 26.0 ],
													"text" : "t f b b b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 417.81390399999998, 204.858902, 45.0, 26.0 ],
													"text" : "f -120."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 73.435776000000004, 324.907623000000001, 132.0, 60.0 ],
													"text" : "wait at least minimum off time, then turn note off and begin looking for next event"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 345.81390399999998, 498.138518999999974, 189.0, 20.0 ],
													"text" : "wait at least minimum note time..."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"linecount" : 7,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 345.81390399999998, 319.912994000000026, 103.653992000000002, 100.0 ],
													"text" : "track amplitude till it stops increasing, then turn note on and report peak amplitude of attack"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 314.120574999999974, 247.786452999999995, 143.0, 33.0 ],
													"text" : "if note is off and threshold is passed..."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 67.211014000000006, 552.195679000000041, 111.0, 20.0 ],
													"text" : "amplitude of attack"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 254.369597999999996, 552.195679000000041, 125.0, 20.0 ],
													"text" : "1/0 = note-on/note-off"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 499.94366500000001, 33.061661000000001, 76.0, 20.0 ],
													"text" : "min. off time"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 396.81390399999998, 33.061661000000001, 107.0, 20.0 ],
													"text" : "min. note duration"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 306.519011999999975, 33.061661000000001, 78.0, 20.0 ],
													"text" : "threshold dB"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 60.178246000000001, 287.144347999999979, 29.5, 22.0 ],
													"text" : "0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 138.211014000000006, 216.096954000000011, 33.0, 22.0 ],
													"text" : "stop"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 60.178246000000001, 250.62063599999999, 56.0, 26.0 ],
													"text" : "delay 50"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 60.178246000000001, 214.096954000000011, 57.0, 26.0 ],
													"text" : "onebang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 60.178246000000001, 169.573227000000003, 46.0, 26.0 ],
													"text" : "sel 0 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 139.961014000000006, 472.080261000000007, 29.5, 22.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 60.178246000000001, 133.049530000000004, 34.0, 26.0 ],
													"text" : "gate"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 226.693329000000006, 243.786452999999995, 83.0, 26.0 ],
													"text" : "if $i2 then $f1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 272.544341999999972, 498.138518999999974, 63.0, 26.0 ],
													"text" : "delay 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 241.044342, 472.080261000000007, 29.5, 22.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 368.120574999999974, 175.659897000000001, 35.0, 26.0 ],
													"text" : "== 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 290.693329000000006, 211.723174999999998, 29.5, 26.0 ],
													"text" : "& 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 251.211014000000006, 392.039551000000017, 83.0, 26.0 ],
													"text" : "if $i1 then $f2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 251.211014000000006, 355.976256999999976, 55.0, 26.0 ],
													"text" : "<= -120."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 287.210999000000015, 322.912994000000026, 29.5, 26.0 ],
													"text" : "f"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 251.211014000000006, 279.84973100000002, 31.0, 26.0 ],
													"text" : "t f b"
												}

											}
, 											{
												"box" : 												{
													"comment" : "(float) peak attack amplitude",
													"id" : "obj-28",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 180.211014000000006, 547.195679000000041, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(1/0) note-on/note-off",
													"id" : "obj-29",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 220.404343000000011, 547.195679000000041, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(int) minimum off time in ms",
													"id" : "obj-30",
													"index" : 4,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 522.94366500000001, 56.174694000000002, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(int) minimum note duration in ms",
													"id" : "obj-31",
													"index" : 3,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 432.81390399999998, 56.174694000000002, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(float) threshold dB",
													"id" : "obj-32",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 320.81390399999998, 56.174694000000002, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-33",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 290.693329000000006, 103.533362999999994, 31.0, 26.0 ],
													"text" : "t f b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 353.865021000000013, 139.596633999999995, 45.0, 26.0 ],
													"text" : "f -120."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-35",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 290.693329000000006, 175.659897000000001, 48.0, 26.0 ],
													"text" : "> -120."
												}

											}
, 											{
												"box" : 												{
													"comment" : "(float) audio peak dB",
													"id" : "obj-36",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 211.693329000000006, 50.174694000000002, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 180.211014000000006, 33.061661000000001, 87.0, 20.0 ],
													"text" : "audio peak dB"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 8.0, 8.010277, 419.0, 20.0 ],
													"text" : "Detect an audio event (i.e. a \"note\") when it surpasses a certain dB threshold"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"midpoints" : [ 292.711013999999977, 462.409241000000009, 477.35385100000002, 462.409241000000009, 477.35385100000002, 193.648574999999994, 427.31390399999998, 193.648574999999994 ],
													"source" : [ "obj-1", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-1", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"midpoints" : [ 260.711013999999977, 458.590239999999994, 189.711014000000006, 458.590239999999994 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"midpoints" : [ 69.678246000000001, 320.856079000000022, 50.689383999999997, 320.856079000000022, 50.689383999999997, 127.004081999999997, 69.678246000000001, 127.004081999999997 ],
													"order" : 2,
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"midpoints" : [ 69.678246000000001, 312.0, 99.0, 312.0, 99.0, 288.0, 213.0, 288.0, 213.0, 162.0, 348.0, 162.0, 348.0, 171.0, 377.620574999999974, 171.0 ],
													"order" : 0,
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"midpoints" : [ 69.678246000000001, 418.802978999999993, 229.904343000000011, 418.802978999999993 ],
													"order" : 1,
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"midpoints" : [ 147.711014000000006, 243.858794999999986, 69.678246000000001, 243.858794999999986 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"midpoints" : [ 83.178246000000001, 197.341277999999988, 147.711014000000006, 197.341277999999988 ],
													"order" : 0,
													"source" : [ "obj-16", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 1 ],
													"midpoints" : [ 83.178246000000001, 204.335082999999997, 107.678246000000001, 204.335082999999997 ],
													"order" : 1,
													"source" : [ "obj-16", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"midpoints" : [ 69.678246000000001, 196.526733000000007, 69.678246000000001, 196.526733000000007 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"midpoints" : [ 149.461014000000006, 508.006226000000026, 31.689384, 508.006226000000026, 31.689384, 113.324782999999996, 69.678246000000001, 113.324782999999996 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"midpoints" : [ 236.193329000000006, 273.190001999999993, 260.711013999999977, 273.190001999999993 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 1 ],
													"midpoints" : [ 427.31390399999998, 312.449005, 307.210999000000015, 312.449005 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.784314, 0.145098, 0.023529, 0.9 ],
													"destination" : [ "obj-15", 1 ],
													"midpoints" : [ 282.044341999999972, 531.839600000000019, 204.780472000000003, 531.839600000000019, 204.780472000000003, 207.481110000000001, 107.678246000000001, 207.481110000000001 ],
													"order" : 1,
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.784314, 0.145098, 0.023529, 0.9 ],
													"destination" : [ "obj-17", 0 ],
													"midpoints" : [ 282.044341999999972, 531.0, 180.0, 531.0, 180.0, 459.0, 149.461014000000006, 459.0 ],
													"order" : 0,
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.011765, 0.396078, 0.752941, 0.9 ],
													"destination" : [ "obj-22", 0 ],
													"midpoints" : [ 250.544342, 495.0, 222.0, 495.0, 222.0, 162.0, 348.0, 162.0, 348.0, 171.0, 377.620574999999974, 171.0 ],
													"order" : 0,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.011765, 0.396078, 0.752941, 0.9 ],
													"destination" : [ "obj-29", 0 ],
													"order" : 1,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 1 ],
													"midpoints" : [ 377.620574999999974, 206.191528000000005, 310.693329000000006, 206.191528000000005 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 1 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 1 ],
													"midpoints" : [ 296.710999000000015, 350.234436000000017, 324.711013999999977, 350.234436000000017 ],
													"order" : 0,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"order" : 1,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"order" : 1,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-27", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 1 ],
													"midpoints" : [ 260.711013999999977, 311.466583000000014, 307.210999000000015, 311.466583000000014 ],
													"order" : 0,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.0, 0.533333, 0.168627, 0.9 ],
													"destination" : [ "obj-14", 1 ],
													"midpoints" : [ 532.44366500000001, 101.901947000000007, 185.0, 101.901947000000007, 185.0, 251.933075000000002, 106.678246000000001, 251.933075000000002 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 1 ],
													"midpoints" : [ 442.31390399999998, 125.0, 506.0, 125.0, 506.0, 475.0, 326.044341999999972, 475.0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"midpoints" : [ 330.31390399999998, 122.256561000000005, 427.31390399999998, 122.256561000000005 ],
													"order" : 0,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 1 ],
													"midpoints" : [ 330.31390399999998, 122.256561000000005, 389.365021000000013, 122.256561000000005 ],
													"order" : 1,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 300.193329000000006, 132.969299000000007, 236.193329000000006, 132.969299000000007 ],
													"order" : 1,
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-33", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"order" : 0,
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 1 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 1 ],
													"midpoints" : [ 300.193329000000006, 204.0, 205.0, 204.0, 205.0, 129.0, 84.678246000000001, 129.0 ],
													"order" : 1,
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"order" : 0,
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-36", 0 ]
												}

											}
 ],
										"bgfillcolor_type" : "gradient",
										"bgfillcolor_color1" : [ 0.435294, 0.462745, 0.498039, 1.0 ],
										"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
									}
,
									"patching_rect" : [ 941.0, 593.6917724609375, 333.6015625, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "patcher detectevent"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.847058823529412, 0.847058823529412, 0.847058823529412, 1.0 ],
									"id" : "obj-72",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1023.8671875, 434.3941650390625, 70.0, 56.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 141.0, 350.5, 140.5, 99.0 ],
									"setminmax" : [ -120.0, 0.0 ],
									"setstyle" : 5,
									"settype" : 0,
									"slidercolor" : [ 0.772549019607843, 0.333333333333333, 0.156862745098039, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-22",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 843.0, 519.90966796875, 61.0, 22.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 2,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 81.0, 480.0, 410.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 1,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 9.0, 371.065735000000018, 183.0, 20.0 ],
													"text" : "amplitude on a logarithmic curve"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 134.903503000000001, 317.957733000000019, 125.0, 20.0 ],
													"text" : "expanded level, in dB"
												}

											}
, 											{
												"box" : 												{
													"comment" : "(float) log10 amplitude",
													"id" : "obj-3",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 33.36842, 317.957733000000019, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 33.36842, 262.953063999999983, 31.0, 26.0 ],
													"text" : "!- 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 134.903503000000001, 179.497649999999993, 106.0, 20.0 ],
													"text" : "set floor threshold"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 113.491225999999997, 138.873244999999997, 105.0, 20.0 ],
													"text" : "clip if out of range"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 74.903503000000001, 99.042252000000005, 102.0, 20.0 ],
													"text" : "optional gain/trim"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "float", "int" ],
													"patching_rect" : [ 33.36842, 135.873244999999997, 73.0, 26.0 ],
													"text" : "minimum 0."
												}

											}
, 											{
												"box" : 												{
													"comment" : "(float) expanded level",
													"id" : "obj-9",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 96.320175000000006, 317.957733000000019, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 225.903503000000001, 25.0, 86.0, 20.0 ],
													"text" : "threshold (dB)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 113.491225999999997, 25.0, 89.0, 20.0 ],
													"text" : "input gain (dB)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 9.0, 25.0, 91.0, 20.0 ],
													"text" : "input level (dB)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 148.903503000000001, 262.953063999999983, 175.0, 20.0 ],
													"text" : "expand to occupy full dB range"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 134.903503000000001, 219.328643999999997, 332.0, 20.0 ],
													"text" : "calculate level as a percentage of the above-threshold range"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 33.36842, 96.042252000000005, 31.0, 26.0 ],
													"text" : "+ 0."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "float", "int" ],
													"patching_rect" : [ 33.36842, 175.704224000000011, 93.0, 26.0 ],
													"text" : "maximum -120."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 96.320175000000006, 262.953063999999983, 46.0, 26.0 ],
													"text" : "* -120."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 33.36842, 215.535216999999989, 29.5, 26.0 ],
													"text" : "/ 1."
												}

											}
, 											{
												"box" : 												{
													"comment" : "(float) threshold dB",
													"id" : "obj-19",
													"index" : 3,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 244.903503000000001, 48.624412999999997, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(float) input gain/trim dB",
													"id" : "obj-20",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 130.752196999999995, 48.624412999999997, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(float) dB",
													"id" : "obj-21",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 33.36842, 48.624412999999997, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"midpoints" : [ 42.86842, 255.366196000000002, 105.820175000000006, 255.366196000000002 ],
													"order" : 0,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"order" : 1,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 1 ],
													"midpoints" : [ 254.403503000000001, 168.117370999999991, 116.86842, 168.117370999999991 ],
													"order" : 0,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 1 ],
													"midpoints" : [ 254.403503000000001, 207.948363999999998, 53.36842, 207.948363999999998 ],
													"order" : 1,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 1 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ],
										"bgfillcolor_type" : "gradient",
										"bgfillcolor_color1" : [ 0.435294, 0.462745, 0.498039, 1.0 ],
										"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
									}
,
									"patching_rect" : [ 843.0, 482.3941650390625, 117.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "patcher dBexpander"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 994.49041748046875, 360.249298095703125, 25.0, 20.0 ],
									"text" : "dB"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-53",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 843.0, 404.3575439453125, 67.0, 22.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 2,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 81.0, 290.0, 200.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 1,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-1",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 30.0, 12.0, 239.0, 33.0 ],
													"text" : "Convert a linear amplitude to amplitude in decibels. 0dB = 1. (full amplitude)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 62.229008, 199.0, 33.0 ],
													"text" : "amplitude expressed as a decimal;\r1. = full amplitude"
												}

											}
, 											{
												"box" : 												{
													"comment" : "(float) amplitude",
													"id" : "obj-3",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 21.0, 153.068694999999991, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(float) decibels",
													"id" : "obj-4",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 21.0, 62.229008, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 21.0, 108.946563999999995, 113.0, 26.0 ],
													"style" : "newobjYellow-1",
													"text" : "expr 20.*log10($f1)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 153.068694999999991, 188.0, 33.0 ],
													"text" : "amplitude expressed in decibels;\r0dB = full amplitude"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "newobjYellow-1",
												"default" : 												{
													"fontsize" : [ 12.059008 ],
													"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ],
										"bgfillcolor_type" : "gradient",
										"bgfillcolor_color1" : [ 0.435294, 0.462745, 0.498039, 1.0 ],
										"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
									}
,
									"patching_rect" : [ 843.0, 382.3575439453125, 52.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p AtodB"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-97",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 845.0, 296.3863525390625, 61.0, 22.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 845.0, 267.454833984375, 65.0, 22.0 ],
									"style" : "newobjYellow-1",
									"text" : "peakamp~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 510.0, 376.3575439453125, 58.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 224.5, 9.0, 48.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_longname" : "live.dial[1]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "thresh max"
										}

									}
,
									"varname" : "live.dial[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 454.5, 376.3575439453125, 49.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 169.5, 9.0, 49.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_longname" : "live.dial",
											"parameter_mmax" : 0.4,
											"parameter_shortname" : "thresh min"
										}

									}
,
									"varname" : "live.dial"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 413.0, 563.50701904296875, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 232.75, 81.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 413.0, 524.28240966796875, 42.0, 22.0 ],
									"text" : "edge~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 413.0, 485.057830810546875, 102.0, 22.0 ],
									"text" : "thresh~ 0.005 0.1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 413.0, 445.833221435546875, 106.0, 22.0 ],
									"text" : "average~ 512 rms"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 23.5, 980.6448974609375, 57.0, 22.0 ],
									"text" : "s volume"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"embed" : 1,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"extract" : 1,
									"id" : "obj-9",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "bp.Snapshotter.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "float" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 2,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 78.0, 835.0, 441.0 ],
										"bglocked" : 0,
										"openinpresentation" : 1,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 1,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 374.0, 344.0, 58.0, 22.0 ],
													"restore" : 													{
														"InputRange" : [ 0.0 ],
														"Interval" : [ 4.929133858267717 ],
														"OutputRange" : [ 0.0 ]
													}
,
													"text" : "autopattr",
													"varname" : "u804001394"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 33.0, 67.0, 285.0, 20.0 ],
													"text" : "## Convert a Beap signal into a Max message ## "
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 0,
															"revision" : 2,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 34.0, 34.0, 640.0, 480.0 ],
														"bglocked" : 0,
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 1,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 1,
														"objectsnaponopen" : 1,
														"statusbarvisible" : 2,
														"toolbarvisible" : 1,
														"lefttoolbarpinned" : 0,
														"toptoolbarpinned" : 0,
														"righttoolbarpinned" : 0,
														"bottomtoolbarpinned" : 0,
														"toolbars_unpinned_last_save" : 0,
														"tallnewobj" : 0,
														"boxanimatetime" : 200,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"description" : "",
														"digest" : "",
														"tags" : "",
														"style" : "",
														"subpatcher_template" : "",
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-37",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 349.0, 466.0625, 29.5, 22.0 ],
																	"text" : "0.5"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-39",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 279.25, 458.0625, 29.5, 22.0 ],
																	"text" : "0."
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-40",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ],
																	"patching_rect" : [ 199.0, 514.0625, 99.25, 22.0 ],
																	"text" : "+~ 0."
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-41",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 279.25, 393.0625, 29.5, 22.0 ],
																	"text" : "0.5"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-42",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 222.0, 393.0625, 29.5, 22.0 ],
																	"text" : "1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-43",
																	"maxclass" : "newobj",
																	"numinlets" : 3,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "" ],
																	"patching_rect" : [ 222.0, 330.0, 133.5, 22.0 ],
																	"text" : "sel 0 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-44",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ],
																	"patching_rect" : [ 199.0, 452.559753000000001, 42.0, 22.0 ],
																	"text" : "*~ 0.2"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-32",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 200.0, 225.0625, 29.5, 22.0 ],
																	"text" : "-1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-30",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 130.25, 217.0625, 29.5, 22.0 ],
																	"text" : "0."
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-23",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ],
																	"patching_rect" : [ 52.0, 299.0625, 97.25, 22.0 ],
																	"text" : "+~ 0."
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-21",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 130.25, 152.0625, 29.5, 22.0 ],
																	"text" : "0.4"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-17",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 73.0, 152.0625, 29.5, 22.0 ],
																	"text" : "0.2"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-9",
																	"maxclass" : "newobj",
																	"numinlets" : 3,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "" ],
																	"patching_rect" : [ 122.0, 100.0, 119.0, 22.0 ],
																	"text" : "sel 0 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-6",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ],
																	"patching_rect" : [ 50.0, 211.559753000000001, 42.0, 22.0 ],
																	"text" : "*~ 0.2"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-5",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-8",
																	"index" : 2,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 122.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-10",
																	"index" : 3,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 222.0, 273.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-11",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 562.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-43", 0 ],
																	"source" : [ "obj-10", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-6", 1 ],
																	"source" : [ "obj-17", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-6", 1 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-44", 0 ],
																	"source" : [ "obj-23", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-23", 1 ],
																	"source" : [ "obj-30", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-23", 1 ],
																	"source" : [ "obj-32", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-40", 1 ],
																	"source" : [ "obj-37", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-40", 1 ],
																	"source" : [ "obj-39", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"source" : [ "obj-40", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-44", 1 ],
																	"source" : [ "obj-41", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-44", 1 ],
																	"source" : [ "obj-42", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-37", 0 ],
																	"order" : 0,
																	"source" : [ "obj-43", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-39", 0 ],
																	"order" : 0,
																	"source" : [ "obj-43", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-41", 0 ],
																	"order" : 1,
																	"source" : [ "obj-43", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-42", 0 ],
																	"order" : 1,
																	"source" : [ "obj-43", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-40", 0 ],
																	"source" : [ "obj-44", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-6", 0 ],
																	"source" : [ "obj-5", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-23", 0 ],
																	"source" : [ "obj-6", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 0 ],
																	"source" : [ "obj-8", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-17", 0 ],
																	"order" : 1,
																	"source" : [ "obj-9", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"order" : 1,
																	"source" : [ "obj-9", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-30", 0 ],
																	"order" : 0,
																	"source" : [ "obj-9", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-32", 0 ],
																	"order" : 0,
																	"source" : [ "obj-9", 1 ]
																}

															}
 ],
														"bgfillcolor_type" : "gradient",
														"bgfillcolor_color1" : [ 0.435294, 0.462745, 0.498039, 1.0 ],
														"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
													}
,
													"patching_rect" : [ 33.0, 247.9375, 163.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p conversion"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Ableton Sans Bold Regular",
													"fontsize" : 9.0,
													"id" : "obj-50",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 73.0, 417.0, 49.0, 17.0 ],
													"text" : "Message",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.0, 0.0, 0.0, 0.65 ],
													"fontsize" : 13.0,
													"id" : "obj-129",
													"maxclass" : "live.numbox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 111.0, 312.0, 88.0, 19.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 0.0, 58.0, 19.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_type" : 0,
															"parameter_unitstyle" : 2,
															"parameter_mmin" : 1.0,
															"parameter_longname" : "Interval[1]",
															"parameter_initial_enable" : 1,
															"parameter_mmax" : 500.0,
															"parameter_initial" : [ 100 ],
															"parameter_shortname" : "Interval"
														}

													}
,
													"textcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"varname" : "Interval"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-49",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 33.0, 404.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Ableton Sans Bold Regular",
													"fontsize" : 9.0,
													"id" : "obj-48",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 177.0, 123.984009, 40.0, 17.0 ],
													"text" : "Output",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 33.0, 350.0, 97.0, 22.0 ],
													"text" : "snapshot~ 5"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Ableton Sans Bold Regular",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 123.984009, 32.0, 17.0 ],
													"text" : "Input",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.137255, 0.145098, 0.160784, 0.65 ],
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"bordercolor" : [ 0.0, 0.0, 0.0, 0.56 ],
													"hint" : "",
													"id" : "obj-7",
													"maxclass" : "live.tab",
													"num_lines_patching" : 2,
													"num_lines_presentation" : 2,
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 177.0, 148.0625, 57.0, 65.663452000000007 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_enum" : [ "Bipolar", "Unipolar" ],
															"parameter_type" : 2,
															"parameter_unitstyle" : 0,
															"parameter_longname" : "OutputRange[1]",
															"parameter_initial_enable" : 1,
															"parameter_initial" : [ 0 ],
															"parameter_shortname" : "OutputRange"
														}

													}
,
													"textcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
													"varname" : "OutputRange"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.137255, 0.145098, 0.160784, 0.65 ],
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"bordercolor" : [ 0.0, 0.0, 0.0, 0.56 ],
													"hint" : "",
													"id" : "obj-33",
													"maxclass" : "live.tab",
													"num_lines_patching" : 2,
													"num_lines_presentation" : 2,
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 105.0, 148.0625, 57.0, 65.663452000000007 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_enum" : [ "Bipolar", "Unipolar" ],
															"parameter_type" : 2,
															"parameter_unitstyle" : 0,
															"parameter_longname" : "InputRange[1]",
															"parameter_initial_enable" : 1,
															"parameter_initial" : [ 0 ],
															"parameter_shortname" : "InputRange"
														}

													}
,
													"textcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
													"varname" : "InputRange"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 33.0, 148.0625, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Ableton Sans Bold Regular",
													"fontsize" : 9.0,
													"id" : "obj-19",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 33.0, 123.984009, 38.0, 17.0 ],
													"text" : "Signal",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.137255, 0.145098, 0.160784, 0.65 ],
													"id" : "obj-130",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 33.0, 21.711639000000002, 37.0, 5.0 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.367404, 0.389405, 0.430238, 1.0 ],
													"id" : "obj-131",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 77.337188999999995, 21.711639000000002, 37.0, 5.0 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-135",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 120.079284999999999, 21.711639000000002, 37.0, 5.0 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 1 ],
													"source" : [ "obj-129", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 1 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"source" : [ "obj-47", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 2 ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
									}
,
									"patching_rect" : [ 23.5, 697.43353271484375, 58.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 14.0, 426.317962646484375, 58.0, 20.0 ],
									"varname" : "bp.Snapshotter[1]",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 355.0, 61.0, 83.0, 25.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 161.0, 3.0, 120.5, 110.0 ],
									"style" : "Audiomix"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.847058823529412, 0.847058823529412, 0.847058823529412, 1.0 ],
									"id" : "obj-132",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 0,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 248.5, 867.4111328125, 134.0, 118.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 3.99041748046875, 351.5, 133.00958251953125, 99.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"setstyle" : 5,
									"slidercolor" : [ 0.505882352941176, 0.113725490196078, 0.698039215686274, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 1.0 ],
									"id" : "obj-213",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 256.5, 131.0, 83.0, 25.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.5, 3.0, 156.0, 110.0 ],
									"proportion" : 0.39,
									"style" : "Audiomix"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-200", 1 ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-200", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"midpoints" : [ 33.0, 258.0, 854.5, 258.0 ],
									"order" : 0,
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"order" : 2,
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-203", 0 ],
									"order" : 1,
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-144", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 0 ],
									"order" : 0,
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"order" : 1,
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-173", 1 ],
									"source" : [ "obj-171", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-171", 0 ],
									"source" : [ "obj-176", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-171", 0 ],
									"source" : [ "obj-179", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-171", 0 ],
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-186", 1 ],
									"source" : [ "obj-181", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"order" : 1,
									"source" : [ "obj-186", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"order" : 0,
									"source" : [ "obj-186", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-186", 0 ],
									"source" : [ "obj-188", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 1,
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"order" : 0,
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 1 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-126", 0 ],
									"order" : 1,
									"source" : [ "obj-200", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"order" : 0,
									"source" : [ "obj-200", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-209", 0 ],
									"order" : 1,
									"source" : [ "obj-200", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"midpoints" : [ 61.75, 250.0, 607.5, 250.0 ],
									"order" : 0,
									"source" : [ "obj-200", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-203", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-203", 1 ],
									"order" : 1,
									"source" : [ "obj-205", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-209", 1 ],
									"order" : 0,
									"source" : [ "obj-205", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 1 ],
									"source" : [ "obj-209", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-171", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"order" : 1,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"order" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 2 ],
									"order" : 1,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 2 ],
									"order" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 1 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"order" : 1,
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"order" : 0,
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-169", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 2 ],
									"midpoints" : [ 950.5, 474.660400390625, 950.5, 474.660400390625 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 1 ],
									"source" : [ "obj-41", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 1 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 1 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-144", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 3 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 2 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"source" : [ "obj-70", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 2 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-181", 0 ],
									"source" : [ "obj-97", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "Audiomix",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}

								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-1",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-1",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-1",
								"default" : 								{
									"fontsize" : [ 12.059008 ],
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ],
						"bgcolor" : [ 0.356862745098039, 0.356862745098039, 0.356862745098039, 1.0 ]
					}
,
					"patching_rect" : [ 552.0, 173.857147216796875, 51.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 149.0, 52.880950927734375, 51.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"locked_bgcolor" : [ 0.356862745098039, 0.356862745098039, 0.356862745098039, 1.0 ],
						"tags" : ""
					}
,
					"text" : "p sound",
					"varname" : "sound"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1071.0, 96.380950927734375, 69.0, 22.0 ],
					"text" : "r tidal-cycle"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1199.0, 181.380950927734375, 150.0, 20.0 ],
					"text" : "catch message"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1199.0, 207.380950927734375, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1071.0, 252.380950927734375, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1071.0, 198.380950927734375, 41.0, 22.0 ],
					"text" : "sel bd"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1071.0, 164.380950927734375, 47.0, 22.0 ],
					"text" : "zl.iter 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1071.0, 131.380950927734375, 101.0, 22.0 ],
					"text" : "OSC-route /play2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 507.0, 403.0, 1279.0, 594.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 835.0, 497.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 78.0, 245.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[6]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[6]"
										}

									}
,
									"varname" : "toggle[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 619.0, 472.0, 33.0, 22.0 ],
									"text" : "* 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 116.0, 484.0, 33.0, 22.0 ],
									"text" : "* 0.1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 85.400001525878906, 0.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 107.399993896484375, 34.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.dial[3]",
											"parameter_shortname" : "metro"
										}

									}
,
									"varname" : "live.dial[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 898.13818359375, 84.0, 33.0, 22.0 ],
									"text" : "* 10."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 857.13818359375, 84.0, 33.0, 22.0 ],
									"text" : "* 10."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 816.13818359375, 84.0, 33.0, 22.0 ],
									"text" : "* 10."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 895.63818359375, 0.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 274.5, 157.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[22]",
											"parameter_shortname" : "light.z"
										}

									}
,
									"varname" : "live.slider[8]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 857.13818359375, 0.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 236.0, 157.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[23]",
											"parameter_shortname" : "light.y"
										}

									}
,
									"varname" : "live.slider[9]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 816.13818359375, 0.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 195.0, 157.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[24]",
											"parameter_shortname" : "light.x"
										}

									}
,
									"varname" : "live.slider[10]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 721.13818359375, 106.0, 33.0, 22.0 ],
									"text" : "* 10."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 680.13818359375, 106.0, 33.0, 22.0 ],
									"text" : "* 10."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 639.13818359375, 106.0, 33.0, 22.0 ],
									"text" : "* 10."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 718.63818359375, 22.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 274.5, 34.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[19]",
											"parameter_shortname" : "cam.z"
										}

									}
,
									"varname" : "live.slider[5]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 680.13818359375, 22.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 236.0, 34.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[20]",
											"parameter_shortname" : "cam.y"
										}

									}
,
									"varname" : "live.slider[6]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 639.13818359375, 22.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 195.0, 34.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[21]",
											"parameter_shortname" : "cam.x"
										}

									}
,
									"varname" : "live.slider[7]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 473.0, 422.0, 33.0, 22.0 ],
									"text" : "* 10."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 432.0, 422.0, 33.0, 22.0 ],
									"text" : "* 10."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 391.0, 422.0, 33.0, 22.0 ],
									"text" : "* 10."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 470.5, 332.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 274.5, 93.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[18]",
											"parameter_shortname" : "look.z"
										}

									}
,
									"varname" : "live.slider[4]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 432.0, 332.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 236.0, 93.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[17]",
											"parameter_shortname" : "look.y"
										}

									}
,
									"varname" : "live.slider[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 391.0, 332.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 195.0, 93.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[16]",
											"parameter_shortname" : "look.x"
										}

									}
,
									"varname" : "live.slider[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 592.63818359375, 409.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 64.400001525878906, 34.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[15]",
											"parameter_shortname" : "timestep"
										}

									}
,
									"varname" : "live.slider[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 112.400001525878906, 422.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 21.400001525878906, 34.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[14]",
											"parameter_shortname" : "scale"
										}

									}
,
									"varname" : "live.slider"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-45",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 527.0, 483.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-42",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 465.0, 483.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 352.0, 529.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 322.13818359375, 597.0, 191.0, 22.0 ],
									"text" : "prepend /instancing/primitive_num"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 17.600006103515625, 86.400001525878906, 40.0, 22.0 ],
									"text" : "* 0.25"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 475.199981689453125, 198.400009155273438, 145.0, 22.0 ],
									"text" : "expr ($i1*10%1500.)-200."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 227.20001220703125, 251.20001220703125, 40.0, 22.0 ],
									"text" : "* 100."
								}

							}
, 							{
								"box" : 								{
									"addpoints_with_curve" : [ 0.0, 0.0, 0, 0.0, 24.034600638778958, 1.0, 0, 0.0, 104.141928387816847, 7.418181441046975, 0, 0.0, 196.81562615569527, 8.963636029850353, 0, 0.0, 273.738703078772176, 9.10909057747234, 0, 0.0, 273.738703078772176, 6.051636565815318, 0, 0.0, 326.993149765849807, 1.545454101129012, 0, 0.0, 392.081898345044351, 4.110545591874556, 0, 0.0, 510.425093611316584, 2.51200008392334, 0, 0.0, 557.762371717825431, 2.169454617933793, 0, 0.0, 557.762371717825431, 0.228363643993031, 0, 0.0, 587.34821850026151, 0.690909056230025, 0, 0.0, 646.519768167529605, 4.224727413871071, 0, 0.0, 764.862963433801724, 1.027636397968639, 0, 0.0, 889.123318463387591, 2.968727371909402, 0, 0.0, 975.147858526579739, 9.890908750620754, 0, 0.0 ],
									"id" : "obj-1",
									"maxclass" : "function",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "float", "", "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 269.20001220703125, 170.800003051757812, 181.0, 80.0 ],
									"range" : [ 0.0, 10.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 3,
											"parameter_longname" : "function[6]",
											"parameter_invisible" : 1,
											"parameter_shortname" : "function"
										}

									}
,
									"varname" : "function[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 845.4000244140625, 220.0, 30.0, 22.0 ],
									"text" : "* 50"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 865.114501953125, 186.0, 103.0, 22.0 ],
									"text" : "expr exp($f1- 1.0)"
								}

							}
, 							{
								"box" : 								{
									"addpoints_with_curve" : [ 0.0, 2.009600067138672, 0, 0.0, 133.384363899695529, 5.903200197219848, 0, 0.0, 176.686123033660351, 3.76800012588501, 2, 0.0, 328.2422800025372, 4.710000157356262, 0, 0.0, 474.385717079668495, 1.004800033569336, 0, 0.0, 588.052834806326132, 3.76800012588501, 0, 0.0, 693.60087269536541, 2.135200071334839, 0, 0.0, 1000.0, 2.51200008392334, 2, 0.0 ],
									"id" : "obj-88",
									"maxclass" : "function",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "float", "", "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 985.114501953125, 76.0, 381.5, 125.0 ],
									"range" : [ 0.0, 6.28000020980835 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 3,
											"parameter_longname" : "function[5]",
											"parameter_invisible" : 1,
											"parameter_shortname" : "function"
										}

									}
,
									"varname" : "function[2]"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-78",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1364.114501953125, 657.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-79",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1312.114501953125, 657.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-80",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1260.114501953125, 657.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1196.63818359375, 695.0, 81.0, 22.0 ],
									"text" : "pak 0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-82",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1208.114501953125, 657.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1199.614501953125, 766.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1199.614501953125, 737.0, 200.0, 22.0 ],
									"text" : "prepend /instancing/transform_seed"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-71",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1122.114501953125, 665.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-72",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1070.114501953125, 665.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-73",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1018.114501953125, 665.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 954.63818359375, 703.0, 81.0, 22.0 ],
									"text" : "pak 0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-75",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 966.114501953125, 665.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 957.614501953125, 774.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 957.614501953125, 745.0, 194.0, 22.0 ],
									"text" : "prepend /instancing/primitive_seed"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-70",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 894.114501953125, 665.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-69",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 842.114501953125, 665.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-68",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 790.114501953125, 665.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 726.63818359375, 703.0, 81.0, 22.0 ],
									"text" : "pak 0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-63",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 738.114501953125, 665.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 729.614501953125, 774.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 729.614501953125, 745.0, 191.0, 22.0 ],
									"text" : "prepend /instancing/shadow_seed"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-61",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "f3pb.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 585.13818359375, 243.0, 155.0, 24.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 575.13818359375, 293.0, 175.0, 22.0 ],
									"text" : "prepend /instancing/cam/lookat"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-59",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "f3pb.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 575.63818359375, 332.0, 155.0, 24.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 575.63818359375, 361.0, 187.0, 22.0 ],
									"text" : "prepend /instancing/light_position"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 2,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 214.0, 102.0, 1602.0, 423.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 15,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 459.0, 16.0, 150.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 178.7381591796875, 4.0, 54.7381591796875, 20.0 ],
													"text" : "reload",
													"textcolor" : [ 0.811764717102051, 0.811764717102051, 0.811764717102051, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 428.0, 16.0, 24.0, 24.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 235.476318359375, 2.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 42.0, 227.0, 61.0, 22.0 ],
													"text" : "getFile $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 42.0, 267.0, 101.0, 22.0 ],
													"text" : "s shader-watcher"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.811764705882353, 0.811764705882353, 0.811764705882353, 1.0 ],
													"id" : "obj-12",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 267.0, 16.0, 150.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 21.0, 4.0, 150.0, 20.0 ],
													"text" : "Instancing Select Shader"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-45",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1332.7381591796875, 145.0, 124.0, 35.0 ],
													"presentation" : 1,
													"presentation_linecount" : 2,
													"presentation_rect" : [ 541.7381591796875, 56.0, 118.0, 35.0 ],
													"style" : "default",
													"text" : "transform_feedback/render.frag"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1332.7381591796875, 190.5238037109375, 36.0, 22.0 ],
													"text" : "route"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-48",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1332.7381591796875, 216.5, 272.0, 22.0 ],
													"text" : "prepend /instancing/primitive_render/fragment"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-49",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1367.976318359375, 102.0, 150.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 567.7381591796875, 34.0, 92.0, 20.0 ],
													"text" : "render fs",
													"textcolor" : [ 0.811764717102051, 0.811764717102051, 0.811764717102051, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-50",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "shader_select.maxpat",
													"numinlets" : 0,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1332.7381591796875, 100.0, 24.0, 24.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 541.7381591796875, 32.0, 24.0, 24.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-51",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1032.7381591796875, 145.0, 124.0, 35.0 ],
													"presentation" : 1,
													"presentation_linecount" : 2,
													"presentation_rect" : [ 412.7381591796875, 56.0, 118.0, 35.0 ],
													"style" : "default",
													"text" : "transform_feedback/render.vert"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1032.7381591796875, 190.5238037109375, 36.0, 22.0 ],
													"text" : "route"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-53",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1032.7381591796875, 216.5, 239.0, 22.0 ],
													"text" : "prepend /instancing/primitive_render/vertex"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-54",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1067.976318359375, 102.0, 150.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 438.7381591796875, 32.0, 92.0, 20.0 ],
													"text" : "render vs",
													"textcolor" : [ 0.811764717102051, 0.811764717102051, 0.811764717102051, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-55",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "shader_select.maxpat",
													"numinlets" : 0,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1032.7381591796875, 100.0, 24.0, 24.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 412.7381591796875, 30.0, 24.0, 24.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 746.7381591796875, 145.0, 124.0, 35.0 ],
													"presentation" : 1,
													"presentation_linecount" : 2,
													"presentation_rect" : [ 152.7381591796875, 54.0, 118.0, 35.0 ],
													"style" : "default",
													"text" : "transform_feedback/shadow.frag"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 746.7381591796875, 190.5238037109375, 36.0, 22.0 ],
													"text" : "route"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 746.7381591796875, 216.5, 252.0, 22.0 ],
													"text" : "prepend /instancing/shadow_shader/fragment"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-42",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 781.976318359375, 102.0, 150.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 178.7381591796875, 32.0, 92.0, 20.0 ],
													"text" : "shadow fs",
													"textcolor" : [ 0.811764717102051, 0.811764717102051, 0.811764717102051, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-43",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "shader_select.maxpat",
													"numinlets" : 0,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 746.7381591796875, 100.0, 24.0, 24.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 152.7381591796875, 30.0, 24.0, 24.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 446.7381591796875, 145.0, 124.0, 35.0 ],
													"presentation" : 1,
													"presentation_linecount" : 2,
													"presentation_rect" : [ 282.0, 56.0, 118.0, 35.0 ],
													"style" : "default",
													"text" : "transform_feedback/shadow.vert"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 152.0, 46.0, 79.0, 22.0 ],
													"text" : "r shader_text"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 446.7381591796875, 190.5238037109375, 36.0, 22.0 ],
													"text" : "route"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 446.7381591796875, 216.5, 237.0, 22.0 ],
													"text" : "prepend /instancing/shadow_shader/vertex"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 481.976318359375, 102.0, 150.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 309.2381591796875, 32.0, 90.7618408203125, 20.0 ],
													"text" : "shadow vs",
													"textcolor" : [ 0.811764717102051, 0.811764717102051, 0.811764717102051, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-22",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "shader_select.maxpat",
													"numinlets" : 0,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 446.7381591796875, 100.0, 24.0, 24.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 282.0, 30.0, 24.0, 24.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 152.0, 145.0, 124.0, 35.0 ],
													"presentation" : 1,
													"presentation_linecount" : 2,
													"presentation_rect" : [ 20.840789794921875, 56.0, 118.0, 35.0 ],
													"style" : "default",
													"text" : "transform_feedback/test1.vert"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 152.0, 193.5238037109375, 36.0, 22.0 ],
													"text" : "route"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 152.0, 220.5, 259.0, 22.0 ],
													"text" : "prepend /instancing/transform_feedback/vertex"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 187.2381591796875, 102.0, 150.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 46.840789794921875, 32.0, 92.0, 20.0 ],
													"text" : "transform",
													"textcolor" : [ 0.811764717102051, 0.811764717102051, 0.811764717102051, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-16",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "shader_select.maxpat",
													"numinlets" : 0,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 152.0, 100.0, 24.0, 24.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 20.840789794921875, 30.0, 24.0, 24.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 152.0, 392.5, 67.0, 22.0 ],
													"text" : "s osc-send"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"midpoints" : [ 456.2381591796875, 364.5, 161.5, 364.5 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 1 ],
													"order" : 0,
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"order" : 1,
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"order" : 0,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 1,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"order" : 1,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 1 ],
													"order" : 0,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"midpoints" : [ 161.5, 366.5, 161.5, 366.5 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"order" : 4,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"midpoints" : [ 161.5, 128.76190185546875, 756.2381591796875, 128.76190185546875 ],
													"order" : 2,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"midpoints" : [ 161.5, 128.76190185546875, 1342.2381591796875, 128.76190185546875 ],
													"order" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"midpoints" : [ 161.5, 128.76190185546875, 456.2381591796875, 128.76190185546875 ],
													"order" : 3,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"midpoints" : [ 161.5, 128.76190185546875, 1042.2381591796875, 128.76190185546875 ],
													"order" : 1,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"order" : 1,
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 1 ],
													"order" : 0,
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"midpoints" : [ 756.2381591796875, 364.5, 161.5, 364.5 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 1 ],
													"order" : 0,
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"order" : 1,
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"order" : 1,
													"source" : [ "obj-45", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 1 ],
													"order" : 0,
													"source" : [ "obj-45", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-48", 0 ],
													"source" : [ "obj-47", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"midpoints" : [ 1342.2381591796875, 364.5, 161.5, 364.5 ],
													"source" : [ "obj-48", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 1 ],
													"order" : 0,
													"source" : [ "obj-50", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 0 ],
													"order" : 1,
													"source" : [ "obj-50", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"order" : 1,
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 1 ],
													"order" : 0,
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-53", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"midpoints" : [ 1042.2381591796875, 364.5, 161.5, 364.5 ],
													"source" : [ "obj-53", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 1 ],
													"order" : 0,
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"order" : 1,
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 3,
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"order" : 4,
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"order" : 2,
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 0 ],
													"order" : 0,
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"order" : 1,
													"source" : [ "obj-7", 0 ]
												}

											}
 ],
										"bgcolor" : [ 0.356862745098039, 0.356862745098039, 0.356862745098039, 1.0 ]
									}
,
									"patching_rect" : [ 1277.4000244140625, 251.0, 93.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"locked_bgcolor" : [ 0.356862745098039, 0.356862745098039, 0.356862745098039, 1.0 ],
										"tags" : ""
									}
,
									"text" : "p shader_select"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 545.13818359375, 720.5, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 819.661865234375, 531.5, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 819.661865234375, 576.5, 290.0, 22.0 ],
									"text" : "prepend /instancing/transform_feedback/reset_buffer"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 678.8763427734375, 422.0, 144.0, 22.0 ],
									"text" : "expr abs(sin($f1)) * 1000."
								}

							}
, 							{
								"box" : 								{
									"addpoints_with_curve" : [ 0.0, 0.0, 0, 0.0, 58.092461257684427, 2.660277866654926, 0, 0.0, 167.382078744023232, 1.875277840428882, 0, 0.0, 314.923062350580608, 1.918888952996996, 0, 0.0, 364.103390219433038, 1.48277782731586, 0, 0.0, 506.17989295167348, 0.043611112568114, 0, 0.0, 562.463979252049171, 5.233333508173625, 0, 0.0, 670.114319181181713, 1.831666727860769, 0, 0.0, 823.119783662055966, 2.83472231692738, 2, 0.0, 883.229073279542376, 3.57611123058531, 0, 0.0, 921.48043939976094, 1.003055589066611, 0, 0.0, 977.880714913091765, 6.28000020980835, 0, 0.0, 1000.0, 0.228363643993031, 0, 0.0, 1000.0, 0.087222225136227, 0, 0.0 ],
									"id" : "obj-20",
									"maxclass" : "function",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "float", "", "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 788.13818359375, 251.0, 378.0, 169.0 ],
									"range" : [ 0.0, 6.28000020980835 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 3,
											"parameter_longname" : "function[4]",
											"parameter_invisible" : 1,
											"parameter_shortname" : "function"
										}

									}
,
									"varname" : "function[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 782.13818359375, 106.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-15",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 18.414478302001953, 109.400001525878906, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-13",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 18.399999618530273, 337.79998779296875, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-12",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 76.400001525878906, 337.79998779296875, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-7",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 48.2144775390625, 504.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 31.2144775390625, 585.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 31.2144775390625, 556.0, 145.0, 22.0 ],
									"text" : "prepend /instancing/scale"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-6",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 628.13818359375, 500.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 638.13818359375, 531.5, 162.0, 22.0 ],
									"text" : "prepend /instancing/timestep"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-2",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 208.199996948242188, 293.79998779296875, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 10.40000057220459, 278.79998779296875, 40.0, 22.0 ],
									"text" : "* 100."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 14.13815975189209, 255.800003051757812, 27.0, 22.0 ],
									"text" : "cos"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 63.876319885253906, 251.800003051757812, 24.0, 22.0 ],
									"text" : "sin"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 64.138160705566406, 278.79998779296875, 40.0, 22.0 ],
									"text" : "* 100."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 14.7381591796875, 57.0, 79.0, 22.0 ],
									"text" : "counter 4000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 14.7381591796875, 30.0, 56.0, 22.0 ],
									"text" : "metro 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 14.7381591796875, 0.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 32.7381591796875, 245.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[5]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[5]"
										}

									}
,
									"varname" : "toggle"
								}

							}
, 							{
								"box" : 								{
									"addpoints_with_curve" : [ 0.0, 0.0, 0, 0.0, 60.720951599482248, 3.882181947881525, 0, 0.0, 143.561188285872788, 6.28000020980835, 0, 0.0, 196.81562615569527, 3.311272837898948, 0, 0.0, 273.738703078772176, 6.051636565815318, 0, 0.0, 279.65586284208581, 0.0, 0, 0.0, 392.081898345044351, 4.110545591874556, 0, 0.0, 510.425093611316584, 2.51200008392334, 0, 0.0, 557.762371717825431, 2.169454617933793, 0, 0.0, 557.762371717825431, 0.228363643993031, 0, 0.0, 646.519768167529605, 4.224727413871071, 0, 0.0, 764.862963433801724, 1.027636397968639, 2, 0.0, 889.123318463387591, 2.968727371909402, 0, 0.0, 954.212075859837228, 6.165818387811834, 0, 0.0 ],
									"id" : "obj-19",
									"maxclass" : "function",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "float", "", "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 25.138158798217773, 152.800003051757812, 181.0, 80.0 ],
									"range" : [ 0.0, 6.28000020980835 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 3,
											"parameter_longname" : "function[3]",
											"parameter_invisible" : 1,
											"parameter_shortname" : "function"
										}

									}
,
									"varname" : "function"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-33",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "f3pb.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 566.13818359375, 164.0, 155.0, 24.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 556.13818359375, 214.0, 184.0, 22.0 ],
									"text" : "prepend /instancing/cam/position"
								}

							}
, 							{
								"box" : 								{
									"attr" : "range",
									"id" : "obj-3",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 233.938156127929688, 62.0, 209.199996948242188, 22.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 215.200003623962402, 264.000006020069122 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 3,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 2,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"order" : 4,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"order" : 1,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"midpoints" : [ 27.914478302001953, 137.400001525878906, 517.66448974609375, 137.400001525878906, 517.66448974609375, 65.0, 994.614501953125, 65.0 ],
									"order" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 1 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"order" : 2,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"order" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"order" : 1,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 1 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 1 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 1 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 1 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 2 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 2 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 2 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"order" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"order" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 1 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 0,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"order" : 1,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 2 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 1 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 1 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 2 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 3 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 3 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 2 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 1 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 3 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 2 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 1 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"bgcolor" : [ 0.356862745098039, 0.356862745098039, 0.356862745098039, 1.0 ]
					}
,
					"patching_rect" : [ 765.0, 107.028572082519531, 73.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 267.2618408203125, 47.380950927734375, 73.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"locked_bgcolor" : [ 0.356862745098039, 0.356862745098039, 0.356862745098039, 1.0 ],
						"tags" : ""
					}
,
					"text" : "p Instancing"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 388.0, 1013.0, 697.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 78.7381591796875, 520.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 23.0, 734.0, 40.0, 22.0 ],
									"text" : "* 100."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 26.7381591796875, 711.0, 27.0, 22.0 ],
									"text" : "cos"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 76.476318359375, 707.0, 24.0, 22.0 ],
									"text" : "sin"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 76.7381591796875, 734.0, 40.0, 22.0 ],
									"text" : "* 100."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 37.7381591796875, 577.0, 79.0, 22.0 ],
									"text" : "counter 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 37.7381591796875, 550.0, 56.0, 22.0 ],
									"text" : "metro 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 37.7381591796875, 520.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"addpoints_with_curve" : [ 0.0, 0.0, 0, 0.0, 248.520710059171591, 2.854545549912886, 0, 0.0, 656.804733727810685, 4.795636523853648, 0, 0.0, 1000.0, 6.28000020980835, 2, 0.0 ],
									"id" : "obj-19",
									"maxclass" : "function",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "float", "", "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 37.7381591796875, 608.0, 181.0, 80.0 ],
									"range" : [ 0.0, 6.28000020980835 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 3,
											"parameter_longname" : "function[2]",
											"parameter_invisible" : 1,
											"parameter_shortname" : "function"
										}

									}
,
									"varname" : "function"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-33",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "f3pb.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.7381591796875, 613.0, 155.0, 24.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 320.7381591796875, 687.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.7381591796875, 658.0, 209.0, 22.0 ],
									"text" : "prepend /primitive_room/cam/position"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 17.0, 29.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"order" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"order" : 1,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 1 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-44", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1279.0, 181.380950927734375, 97.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p PrimitiveRoom"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.427450980392157, 0.843137254901961, 1.0, 1.0 ],
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 160.0, 370.0, 160.0 ],
						"bglocked" : 0,
						"openinpresentation" : 1,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 15,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 701.0, 606.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 679.0, 816.0, 149.0, 35.0 ],
									"text" : "window size 1 160 384 326"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 577.0, 722.0, 90.0, 22.0 ],
									"text" : "window getsize"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 231.0, 100.5, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[4]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[4]"
										}

									}
,
									"varname" : "toggle[4]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 194.0, 100.5, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[3]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[3]"
										}

									}
,
									"varname" : "toggle[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 157.0, 100.5, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[2]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[2]"
										}

									}
,
									"varname" : "toggle[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 120.0, 100.5, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[1]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[1]"
										}

									}
,
									"varname" : "toggle[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 83.0, 100.5, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle"
										}

									}
,
									"varname" : "toggle"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 231.0, 131.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "button[4]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "button[4]"
										}

									}
,
									"varname" : "button[4]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 231.0, 170.0, 29.5, 22.0 ],
									"text" : "5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 194.0, 131.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "button[3]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "button[3]"
										}

									}
,
									"varname" : "button[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 194.0, 170.0, 29.5, 22.0 ],
									"text" : "4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 157.0, 131.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "button[2]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "button[2]"
										}

									}
,
									"varname" : "button[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 157.0, 170.0, 29.5, 22.0 ],
									"text" : "3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 120.0, 131.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "button[1]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "button[1]"
										}

									}
,
									"varname" : "button[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 120.0, 170.0, 29.5, 22.0 ],
									"text" : "2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 83.0, 131.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "button",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "button"
										}

									}
,
									"varname" : "button"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 83.0, 170.0, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 712.0, 100.5, 116.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 290.0, 111.0, 76.0, 20.0 ],
									"text" : "send current"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 712.0, 126.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 290.0, 132.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 724.0, 653.0, 150.0, 20.0 ],
									"text" : "<-- Bang me!"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 696.0, 651.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 696.0, 691.0, 368.0, 35.0 ],
									"text" : "presentation 1, window notitle, window size 0 160 370 320, window exec"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 685.0, 744.0, 69.0, 22.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.643137254901961, 0.545098039215686, 0.545098039215686, 0.0 ],
									"id" : "obj-29",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 298.0, 62.5, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 275.0, 5.5, 70.0, 20.0 ],
									"text" : "container2",
									"textcolor" : [ 0.811764717102051, 0.811764717102051, 0.811764717102051, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 57.0, 58.5, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 29.5, 5.5, 70.0, 20.0 ],
									"text" : "container0",
									"textcolor" : [ 0.811764717102051, 0.811764717102051, 0.811764717102051, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 217.0, 62.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 151.0, 5.5, 70.0, 20.0 ],
									"text" : "container1",
									"textcolor" : [ 0.811764717102051, 0.811764717102051, 0.811764717102051, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 626.0, 369.0, 137.0, 22.0 ],
									"restore" : [ 0.079545454545455 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr container2_opacity",
									"varname" : "container2_opacity"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 357.0, 382.5, 137.0, 22.0 ],
									"restore" : [ 1.0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr container1_opacity",
									"varname" : "container1_opacity"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 128.0, 376.5, 137.0, 22.0 ],
									"restore" : [ 1.0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr container0_opacity",
									"varname" : "container0_opacity"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 137.5, 353.0, 75.0, 20.0 ],
									"text" : "Container0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 685.0, 402.0, 50.0, 41.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 260.0, 51.5, 100.0, 41.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_longname" : "container2 _opacity",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "container2 _opacity"
										}

									}
,
									"varname" : "live.slider[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 416.0, 414.0, 50.0, 41.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 136.0, 51.5, 100.0, 41.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_longname" : "scene1 _opacity",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "container1 _opacity"
										}

									}
,
									"varname" : "container1 _opacity[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 187.0, 408.5, 50.0, 41.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 14.5, 51.5, 100.0, 41.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_longname" : "live.slider",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "container0 _opacity"
										}

									}
,
									"varname" : "live.slider"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 589.0, 539.0, 131.0, 35.0 ],
									"text" : "/manager/set_opacity 2 0.079545"
								}

							}
, 							{
								"box" : 								{
									"allowdrag" : 0,
									"id" : "obj-61",
									"items" : [ "ShaderArt", ",", "VertexArt", ",", "Instancing", ",", "FeedbackObject", ",", "MeshChain", ",", "RainDrop" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 596.0, 460.0, 100.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 260.0, 27.5, 100.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "ShaderArt", "VertexArt", "Instancing", "FeedbackObject", "MeshChain", "RainDrop" ],
											"parameter_type" : 2,
											"parameter_longname" : "umenu[2]",
											"parameter_mmax" : 5.0,
											"parameter_shortname" : "umenu"
										}

									}
,
									"style" : "chiba",
									"varname" : "umenu[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 596.0, 501.0, 110.0, 22.0 ],
									"text" : "container.maxpat 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 343.0, 539.0, 131.0, 35.0 ],
									"text" : "/manager/set_opacity 1 1."
								}

							}
, 							{
								"box" : 								{
									"allowdrag" : 0,
									"id" : "obj-58",
									"items" : [ "ShaderArt", ",", "VertexArt", ",", "Instancing", ",", "FeedbackObject", ",", "MeshChain", ",", "RainDrop" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 309.5, 460.0, 100.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 136.0, 27.5, 100.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "ShaderArt", "VertexArt", "Instancing", "FeedbackObject", "MeshChain", "RainDrop" ],
											"parameter_type" : 2,
											"parameter_longname" : "umenu[1]",
											"parameter_mmax" : 5.0,
											"parameter_shortname" : "umenu"
										}

									}
,
									"style" : "chiba",
									"varname" : "umenu[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 350.0, 501.0, 110.0, 22.0 ],
									"text" : "container.maxpat 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 120.0, 539.0, 131.0, 35.0 ],
									"text" : "/manager/set_opacity 0 1."
								}

							}
, 							{
								"box" : 								{
									"allowdrag" : 0,
									"id" : "obj-42",
									"items" : [ "ShaderArt", ",", "VertexArt", ",", "Instancing", ",", "FeedbackObject", ",", "MeshChain", ",", "RainDrop" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 86.5, 460.0, 100.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 14.5, 27.5, 100.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "ShaderArt", "VertexArt", "Instancing", "FeedbackObject", "MeshChain", "RainDrop" ],
											"parameter_type" : 2,
											"parameter_longname" : "umenu",
											"parameter_mmax" : 5.0,
											"parameter_shortname" : "umenu"
										}

									}
,
									"style" : "chiba",
									"varname" : "umenu"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 127.0, 501.0, 110.0, 22.0 ],
									"text" : "container.maxpat 0"
								}

							}
, 							{
								"box" : 								{
									"bubblesize" : 12,
									"id" : "obj-22",
									"maxclass" : "preset",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "preset", "int", "preset", "int" ],
									"patching_rect" : [ 96.0, 211.0, 150.0, 38.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.5, 116.0, 100.0, 40.0 ],
									"preset_data" : [ 										{
											"number" : 1,
											"data" : [ 5, "obj-42", "umenu", "int", 1, 5, "<invalid>", "umenu", "int", 3, 5, "<invalid>", "umenu", "int", 0, 5, "obj-68", "live.slider", "float", 1.0, 5, "obj-16", "live.slider", "float", 0.0, 5, "obj-70", "live.slider", "float", 0.0 ]
										}
, 										{
											"number" : 2,
											"data" : [ 5, "obj-42", "umenu", "int", 1, 5, "<invalid>", "umenu", "int", 3, 5, "<invalid>", "umenu", "int", 2, 5, "obj-68", "live.slider", "float", 0.0, 5, "obj-16", "live.slider", "float", 0.968503952026367, 5, "obj-70", "live.slider", "float", 0.0 ]
										}
, 										{
											"number" : 3,
											"data" : [ 5, "obj-42", "umenu", "int", 1, 5, "<invalid>", "umenu", "int", 3, 5, "<invalid>", "umenu", "int", 2, 5, "obj-68", "live.slider", "float", 0.0, 5, "obj-16", "live.slider", "float", 0.0, 5, "obj-70", "live.slider", "float", 1.0 ]
										}
, 										{
											"number" : 4,
											"data" : [ 5, "obj-42", "umenu", "int", 1, 5, "<invalid>", "umenu", "int", 4, 5, "<invalid>", "umenu", "int", 2, 5, "obj-68", "live.slider", "float", 0.0, 5, "obj-16", "live.slider", "float", 1.0, 5, "obj-70", "live.slider", "float", 0.0 ]
										}
, 										{
											"number" : 5,
											"data" : [ 5, "obj-42", "umenu", "int", 3, 5, "<invalid>", "umenu", "int", 1, 5, "<invalid>", "umenu", "int", 0, 5, "obj-68", "live.slider", "float", 1.0, 5, "obj-16", "live.slider", "float", 1.0, 5, "obj-70", "live.slider", "float", 0.0 ]
										}
, 										{
											"number" : 7,
											"data" : [ 5, "obj-42", "umenu", "int", 2, 5, "<invalid>", "umenu", "int", 2, 5, "<invalid>", "umenu", "int", 2, 5, "obj-68", "live.slider", "float", 1.0, 5, "obj-16", "live.slider", "float", 1.0, 5, "obj-70", "live.slider", "float", 1.0 ]
										}
 ],
									"style" : "chiba"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 626.0, 347.0, 75.0, 20.0 ],
									"text" : "Container2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 361.5, 353.0, 75.0, 20.0 ],
									"text" : "Container1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 377.0, 669.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, -1.0, 120.0, 103.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 726.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 126.0, -1.0, 120.0, 103.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 236.0, 691.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 250.0, -1.0, 120.0, 103.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 1 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 1 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-42", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-58", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 1 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 2,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"order" : 5,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"order" : 3,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"order" : 4,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-61", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 1 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"source" : [ "obj-68", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 693.0, 740.0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 1 ],
									"source" : [ "obj-70", 1 ]
								}

							}
 ],
						"bgcolor" : [ 0.356862745098039, 0.356862745098039, 0.356862745098039, 1.0 ],
						"editing_bgcolor" : [ 0.811764705882353, 0.811764705882353, 0.811764705882353, 1.0 ]
					}
,
					"patching_rect" : [ 552.0, 44.380950927734375, 98.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 149.0, 17.380950927734375, 98.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"editing_bgcolor" : [ 0.811764705882353, 0.811764705882353, 0.811764705882353, 1.0 ],
						"globalpatchername" : "",
						"locked_bgcolor" : [ 0.356862745098039, 0.356862745098039, 0.356862745098039, 1.0 ],
						"tags" : ""
					}
,
					"text" : "p main-controller",
					"varname" : "patcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 369.65386962890625, 172.076934814453125, 91.0, 22.0 ],
					"text" : "print @popup 1"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 248.0, 590.0, 1132.0, 512.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 202.0, 77.0, 55.0, 22.0 ],
									"text" : "r volume"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1059.0, 51.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1070.0, 21.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[20]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[18]"
										}

									}
,
									"varname" : "toggle[4]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1065.0, 83.0, 74.0, 22.0 ],
									"text" : "post/tile.frag"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 960.0, 51.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 971.0, 21.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[19]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[18]"
										}

									}
,
									"varname" : "toggle[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 966.0, 83.0, 99.0, 22.0 ],
									"text" : "post/reverse.frag"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 232.0, 140.0, 33.0, 22.0 ],
									"text" : "* 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 232.0, 113.0, 29.5, 22.0 ],
									"text" : "!- 1."
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-81",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 297.0, 119.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-91",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 304.0, 14.0, 55.0, 22.0 ],
									"text" : "0, 1. 150"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-92",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 304.0, 53.0, 36.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 304.0, 85.0, 83.0, 22.0 ],
									"text" : "snapshot~ 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 93.833328247070312, 12.0, 81.0, 22.0 ],
									"text" : "r audio_event"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 823.0, 51.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 834.0, 21.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[18]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[18]"
										}

									}
,
									"varname" : "toggle[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 720.0, 51.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 731.0, 21.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[17]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[17]"
										}

									}
,
									"varname" : "toggle[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 585.0, 51.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 596.0, 21.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_type" : 2,
											"parameter_longname" : "toggle[16]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "toggle[16]"
										}

									}
,
									"varname" : "toggle"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 829.0, 83.0, 122.0, 22.0 ],
									"text" : "post/color-diff.frag"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 724.0, 83.0, 97.0, 22.0 ],
									"text" : "post/mosaic.frag"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 630.0, 161.0, 40.0, 22.0 ],
									"text" : "t s s s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 312.0, 207.0, 61.0, 22.0 ],
									"text" : "getFile $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 312.0, 241.0, 101.0, 22.0 ],
									"text" : "s shader-watcher"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 580.0, 83.0, 131.0, 22.0 ],
									"text" : "post/normal_mix.frag"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 438.0, 228.0, 197.0, 22.0 ],
									"text" : "prepend /post_processing/fragment"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 429.0, 263.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 380.0, 142.0, 79.0, 22.0 ],
									"text" : "r shader_text"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 438.0, 194.0, 36.0, 22.0 ],
									"text" : "route"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 475.0, 142.0, 111.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 161.0, 148.0, 132.0, 22.0 ],
									"style" : "chiba",
									"text" : "post/color-diff.frag"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-126",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "shader_select.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 487.0, 98.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 135.0, 148.0, 24.0, 24.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-13",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 195.0, 253.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 210.0, 194.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[13]",
											"parameter_shortname" : "live.slider[10]"
										}

									}
,
									"varname" : "live.slider[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 154.0, 194.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[12]",
											"parameter_shortname" : "live.slider[10]"
										}

									}
,
									"varname" : "live.slider[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 93.833328247070312, 198.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[11]",
											"parameter_shortname" : "live.slider[10]"
										}

									}
,
									"varname" : "live.slider[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 41.0, 190.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[10]",
											"parameter_shortname" : "live.slider[10]"
										}

									}
,
									"varname" : "live.slider"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 108.0, 98.0, 73.0, 22.0 ],
									"text" : "expr $f1*50."
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-43",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 142.166671752929688, 253.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-42",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 89.333328247070312, 253.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-41",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 36.5, 253.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 36.5, 293.0, 81.0, 22.0 ],
									"text" : "pak 0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 36.5, 324.0, 182.0, 22.0 ],
									"text" : "prepend /post_processing/seeds"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 36.5, 356.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 12.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 1 ],
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 3 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 1 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 1 ],
									"source" : [ "obj-26", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 1 ],
									"source" : [ "obj-26", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 1 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 2 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-91", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"order" : 0,
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"order" : 1,
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"source" : [ "obj-91", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-92", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "Audiomix",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}

								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 552.0, 104.4761962890625, 102.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 149.0, 90.380950927734375, 102.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p PostProcessing"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"format" : 6,
					"id" : "obj-17",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 153.5, 173.857147216796875, 64.0, 26.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.5, 98.380950927734375, 125.0, 26.0 ],
					"varname" : "number[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1208.0, 68.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1208.0, 101.0, 51.0, 22.0 ],
					"text" : "s reload"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 845.0, 201.0, 333.0 ],
						"openrect" : [ 0.0, 0.0, 201.0, 333.0 ],
						"bglocked" : 0,
						"openinpresentation" : 1,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 15,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"globalpatchername" : "vertex_num",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 155.0, 429.0, 63.0, 22.0 ],
									"text" : "metro 100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 155.0, 387.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 695.0, 498.0, 55.0, 22.0 ],
									"text" : "r volume"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 188.0, 17.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 161.5, 6.0, 43.0, 20.0 ],
									"text" : "reload"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 229.0, 324.0, 61.0, 22.0 ],
									"text" : "getFile $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 229.0, 358.0, 101.0, 22.0 ],
									"text" : "s shader-watcher"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 324.0, 79.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 171.0, 28.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-33",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "f3pb.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 716.0, 596.0, 155.0, 24.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 716.0, 670.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 716.0, 641.0, 142.0, 22.0 ],
									"text" : "prepend /vertex_art/seed"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 2,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 69.0, 837.0, 640.0, 290.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 230.0, 43.0, 29.5, 22.0 ],
													"text" : "20"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 213.0, -4.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 427.7381591796875, 28.0, 93.0, 22.0 ],
													"text" : "loadmess 1000."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 234.0, 65.0, 35.0, 22.0 ],
													"text" : "clear"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 54.7381591796875, 0.0, 18.0, 22.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-2",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 217.0, 193.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 91.7381591796875, 6.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-41",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 40.0, 231.0, 40.0, 22.0 ],
													"text" : "* 400."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 43.7381591796875, 208.0, 27.0, 22.0 ],
													"text" : "cos"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 93.476318359375, 204.0, 24.0, 22.0 ],
													"text" : "sin"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 93.7381591796875, 231.0, 40.0, 22.0 ],
													"text" : "* 400."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 4,
													"outlettype" : [ "int", "", "", "int" ],
													"patching_rect" : [ 54.7381591796875, 74.0, 79.0, 22.0 ],
													"text" : "counter 1000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 54.7381591796875, 47.0, 56.0, 22.0 ],
													"text" : "metro 20"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 54.7381591796875, 24.0, 20.0, 20.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_enum" : [ "off", "on" ],
															"parameter_type" : 2,
															"parameter_longname" : "toggle[21]",
															"parameter_mmax" : 1.0,
															"parameter_shortname" : "toggle[21]"
														}

													}
,
													"varname" : "toggle"
												}

											}
, 											{
												"box" : 												{
													"addpoints_with_curve" : [ 0.0, 0.0, 0, 0.0, 291.490182368713022, 5.252363811839711, 0, 0.0, 853.620359883505898, 1.370181863958185, 0, 0.0, 1000.0, 6.28000020980835, 0, 0.0 ],
													"id" : "obj-19",
													"maxclass" : "function",
													"mode" : 1,
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "float", "", "", "bang" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 54.7381591796875, 105.0, 181.0, 80.0 ],
													"range" : [ 0.0, 6.28000020980835 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_type" : 3,
															"parameter_longname" : "function",
															"parameter_invisible" : 1,
															"parameter_shortname" : "function"
														}

													}
,
													"varname" : "function"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-33",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "f3pb.maxpat",
													"numinlets" : 3,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 337.7381591796875, 110.0, 155.0, 24.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 337.7381591796875, 184.0, 67.0, 22.0 ],
													"text" : "s osc-send"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 337.7381591796875, 155.0, 183.0, 22.0 ],
													"text" : "prepend /vertex_art/cam/position"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 2 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"order" : 0,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"order" : 1,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 1 ],
													"order" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 1 ],
													"order" : 1,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 0,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"order" : 1,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 2 ],
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 1 ],
													"order" : 0,
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 1,
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 441.5, 444.0, 84.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 112.2618408203125, 73.0, 90.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p cam_control"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 579.0, 47.0, 150.0, 20.0 ],
									"text" : "<-- Bang me!"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 551.0, 45.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 551.0, 85.0, 229.0, 22.0 ],
									"text" : "window size 10 75 300 250, window exec"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 759.0, 139.0, 69.0, 22.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 48.0, 294.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.2618408203125, 51.0, 150.0, 20.0 ],
									"text" : "vertex_num"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 47.0, 248.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.2618408203125, 6.0, 150.0, 20.0 ],
									"text" : "primitive_mode"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 41.0, 590.0, 153.0, 22.0 ],
									"text" : "if \"$i1 && $i2\" then 0 else 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 41.0, 558.0, 29.5, 22.0 ],
									"text" : "< 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 635.0, 32.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 142.0, 558.0, 52.0, 22.0 ],
									"text" : "> 10000"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-20",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.0, 14.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"items" : [ "TRIANGLES", ",", "TRIANGLE_STRIP", ",", "TRIANGLE_FAN", ",", "LINES", ",", "LINE_STRIP", ",", "LINE_LOOP", ",", "POINTS" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 3.0, 509.0, 150.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.2618408203125, 28.0, 150.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "TRIANGLES", "TRIANGLE_STRIP", "TRIANGLE_FAN", "LINES", "LINE_STRIP", "LINE_LOOP", "POINTS" ],
											"parameter_type" : 2,
											"parameter_longname" : "umenu[3]",
											"parameter_initial_enable" : 1,
											"parameter_mmax" : 6.0,
											"parameter_initial" : [ 6 ],
											"parameter_shortname" : "umenu[3]"
										}

									}
,
									"varname" : "umenu"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 709.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 677.0, 197.0, 22.0 ],
									"text" : "prepend /vertex_art/primitive_mode"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 294.0, 417.0, 89.0, 20.0 ],
									"text" : "cam position"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 244.2618408203125, 495.0, 117.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.2618408203125, 73.0, 103.0, 22.0 ],
									"varname" : "number"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 244.2618408203125, 558.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 244.2618408203125, 529.0, 179.0, 22.0 ],
									"text" : "prepend /vertex_art/vertex_num"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 634.2618408203125, 243.0, 124.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 34.840789794921875, 130.0, 118.0, 22.0 ],
									"style" : "default",
									"text" : "vacant.vert"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 532.2618408203125, 258.0, 79.0, 22.0 ],
									"text" : "r shader_text"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 634.2618408203125, 288.5238037109375, 36.0, 22.0 ],
									"text" : "route"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 638.2618408203125, 317.5, 205.0, 22.0 ],
									"text" : "prepend /vertex_art/vertex"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 669.5, 200.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.2618408203125, 107.0, 150.0, 20.0 ],
									"text" : "vertex",
									"textcolor" : [ 0.811764717102051, 0.811764717102051, 0.811764717102051, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-11",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "shader_select.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 634.2618408203125, 198.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.2618408203125, 129.0, 24.0, 24.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 634.2618408203125, 359.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 155.0, 125.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 123.0, 233.605270385742188, 39.0, 95.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[5]",
											"parameter_shortname" : "seed.w"
										}

									}
,
									"varname" : "live.slider[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 114.0, 125.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 82.0, 233.605270385742188, 39.0, 95.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[6]",
											"parameter_shortname" : "seed.z"
										}

									}
,
									"varname" : "live.slider[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 73.0, 125.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 41.0, 233.605270385742188, 39.0, 95.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[7]",
											"parameter_shortname" : "seed.y"
										}

									}
,
									"varname" : "live.slider[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 32.0, 125.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 233.605270385742188, 39.0, 95.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 0,
											"parameter_longname" : "live.slider[8]",
											"parameter_shortname" : "seed.x"
										}

									}
,
									"varname" : "live.slider"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-150",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.2618408203125, 243.0, 118.0, 35.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 34.840789794921875, 195.105270385742188, 149.790130615234375, 22.0 ],
									"text" : "defaults/vcolor_frag.frag"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-131",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 238.2618408203125, 258.0, 79.0, 22.0 ],
									"text" : "r shader_text"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-129",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 340.2618408203125, 288.5238037109375, 36.0, 22.0 ],
									"text" : "route"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-146",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.2618408203125, 324.0, 163.0, 22.0 ],
									"text" : "prepend /vertex_art/fragment"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-142",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 375.5, 200.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.2618408203125, 171.105270385742188, 150.0, 20.0 ],
									"text" : "fragment",
									"textcolor" : [ 0.811764717102051, 0.811764717102051, 0.811764717102051, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-126",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "shader_select.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.2618408203125, 198.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.2618408203125, 194.105270385742188, 24.0, 24.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 340.2618408203125, 359.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 59.0, 306.0, 81.0, 22.0 ],
									"text" : "pak 0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 59.0, 364.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 59.0, 335.0, 142.0, 22.0 ],
									"text" : "prepend /vertex_art/seed"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 235.0, 128.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.89276123046875, 103.421051025390625, 158.7381591796875, 54.0 ],
									"style" : "default"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 465.26116943359375, 156.894744873046875, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.89276123046875, 167.473678588867188, 181.7381591796875, 54.0 ],
									"style" : "default"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"order" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 1,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 1 ],
									"order" : 0,
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"order" : 1,
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"source" : [ "obj-129", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 0 ],
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 1 ],
									"order" : 0,
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"order" : 1,
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"order" : 2,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"order" : 8,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 7,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"order" : 3,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 6,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"order" : 5,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 4,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 1 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 1 ],
									"order" : 1,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"order" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 0,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"order" : 1,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 1 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 2 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 3 ],
									"source" : [ "obj-6", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"bgcolor" : [ 0.356862745098039, 0.356862745098039, 0.356862745098039, 1.0 ]
					}
,
					"patching_rect" : [ 765.0, 26.380950927734375, 68.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 267.2618408203125, 23.380950927734375, 68.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "vertex_num",
						"locked_bgcolor" : [ 0.356862745098039, 0.356862745098039, 0.356862745098039, 1.0 ],
						"tags" : ""
					}
,
					"text" : "p VertexArt",
					"varname" : "VertexArt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 838.0, 536.0, 342.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 198.0, 200.0, 90.0, 22.0 ],
									"text" : "scale 0. 8. 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 209.0, 71.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 198.0, 151.0, 61.0, 22.0 ],
									"text" : "counter 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 136.0, 46.0, 81.0, 22.0 ],
									"text" : "r audio_event"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 33.0, 106.0, 39.0, 22.0 ],
									"text" : "/ 127."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 49.0, 39.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 35.0, 71.0, 76.0, 22.0 ],
									"text" : "random 127."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 412.2618408203125, 45.0, 63.0, 22.0 ],
									"text" : "metro 100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "function",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "float", "", "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 266.0, 84.0, 200.0, 100.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 127.0, 97.0, 55.0, 22.0 ],
									"text" : "r volume"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 232.0, 288.5238037109375, 61.0, 22.0 ],
									"text" : "getFile $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 232.0, 322.5238037109375, 101.0, 22.0 ],
									"text" : "s shader-watcher"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -1.0, 1.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 150.0, 151.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 139.0, 51.0, 39.0, 95.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_longname" : "live.slider[4]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "seed.w"
										}

									}
,
									"varname" : "live.slider[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 109.0, 151.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 98.0, 51.0, 39.0, 95.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_longname" : "live.slider[3]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "seed.z"
										}

									}
,
									"varname" : "live.slider[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 68.0, 151.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 57.0, 51.0, 39.0, 95.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_longname" : "live.slider[2]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "seed.y"
										}

									}
,
									"varname" : "live.slider[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 27.0, 151.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 16.0, 51.0, 39.0, 95.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_longname" : "live.slider[1]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "seed.x"
										}

									}
,
									"varname" : "live.slider"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-150",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.2618408203125, 239.0, 118.0, 35.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 57.0, 19.0, 118.0, 35.0 ],
									"text" : "emotional_noise.frag"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-131",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 191.0, 250.0, 79.0, 22.0 ],
									"text" : "r shader_text"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-129",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 340.2618408203125, 288.5238037109375, 36.0, 22.0 ],
									"text" : "route"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-146",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.2618408203125, 324.0, 167.0, 22.0 ],
									"text" : "prepend /shader_art/fragment"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-142",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 375.5, 200.0, 150.0, 20.0 ],
									"text" : "shader_selector"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-126",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "shader_select.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.2618408203125, 198.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 26.0, 18.0, 24.0, 24.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 340.2618408203125, 359.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 59.0, 306.0, 81.0, 22.0 ],
									"text" : "pak 0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 59.0, 364.0, 67.0, 22.0 ],
									"text" : "s osc-send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 59.0, 335.0, 146.0, 22.0 ],
									"text" : "prepend /shader_art/seed"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 1 ],
									"order" : 0,
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"order" : 1,
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"source" : [ "obj-129", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 0 ],
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 1,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"order" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 1 ],
									"order" : 0,
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 1,
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 4 ],
									"order" : 0,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 2 ],
									"order" : 1,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 2 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 3 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 765.0, 66.704757690429688, 73.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 267.2618408203125, -0.619049072265625, 73.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p ShaderArt",
					"varname" : "ShaderArt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 47.0, 273.0, 73.0, 22.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 4, 44, 358, 172 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 583, 69, 1034, 197 ]
					}
,
					"text" : "pattrstorage",
					"varname" : "u459001383"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 552.0, 217.0, 101.0, 20.0 ],
					"text" : "osc send/receive"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-155",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 331.9285888671875, 88.380950927734375, 99.0, 22.0 ],
					"text" : "r shader-watcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 230.5, 166.4761962890625, 81.0, 22.0 ],
					"text" : "s shader_text"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 230.5, 20.0, 150.0, 20.0 ],
					"text" : "shader watch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 295.9285888671875, 213.0, 51.0, 22.0 ],
					"text" : "sel start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 331.9285888671875, 55.380950927734375, 109.0, 22.0 ],
					"text" : "setDir ../../shaders/"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 230.5, 55.380950927734375, 64.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 230.5, 125.380950927734375, 219.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 1,
						"defer" : 0,
						"node" : "",
						"npm" : "",
						"watch" : 0
					}
,
					"text" : "node.script nodejs/main.js @autostart 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 48.5, 89.0, 70.0, 20.0 ],
					"text" : "fps meter"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 36.0,
					"format" : 6,
					"id" : "obj-48",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.5, 213.0, 187.0, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.5, 25.880950927734375, 125.0, 49.0 ],
					"varname" : "number"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 30.5, 166.4761962890625, 118.0, 22.0 ],
					"text" : "OSC-route /fps /time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 48.5, 118.0, 77.0, 22.0 ],
					"text" : "r osc-receive"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 535.0, 557.0, 807.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 460.5, 317.0, 135.0, 22.0 ],
									"text" : "host 10.0.0.2, port 3884"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 509.0, 243.0, 71.0, 22.0 ],
									"text" : "s tidal-cycle"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 509.0, 182.0, 150.0, 20.0 ],
									"text" : "from tadokoro sensei!!"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 509.0, 208.0, 97.0, 22.0 ],
									"text" : "udpreceive 1818"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 303.0, 176.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.0, 225.0, 125.0, 22.0 ],
									"text" : "maxpacketsize 15000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 224.0, 216.0, 50.0, 20.0 ],
									"text" : "send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 224.0, 249.0, 65.0, 22.0 ],
									"text" : "r osc-send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 224.0, 356.0, 135.0, 22.0 ],
									"text" : "udpsend localhost 3884"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 67.0, 216.0, 50.0, 20.0 ],
									"text" : "receive"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 67.0, 286.0, 79.0, 22.0 ],
									"text" : "s osc-receive"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 67.0, 249.0, 97.0, 22.0 ],
									"text" : "udpreceive 4729"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 312.5, 317.0, 82.0, 22.0 ],
									"text" : "host localhost"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 552.0, 244.0, 37.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 149.0, 121.0, 37.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p osc"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-46", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"order" : 1,
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"midpoints" : [ 466.346169412136078, 166.346159398555756 ],
					"order" : 0,
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-2::obj-61::obj-69" : [ "LinLog", "LinLog", 0 ],
			"obj-7::obj-78" : [ "live.slider[25]", "live.slider[25]", 0 ],
			"obj-7::obj-33" : [ "live.dial[2]", "live.dial[2]", 0 ],
			"obj-3::obj-16" : [ "scene1 _opacity", "container1 _opacity", 0 ],
			"obj-3::obj-33" : [ "button[2]", "button[2]", 0 ],
			"obj-5::obj-19" : [ "function[3]", "function", 0 ],
			"obj-7::obj-41" : [ "live.dial[9]", "live.dial[6]", 0 ],
			"obj-3::obj-58" : [ "umenu[1]", "umenu", 0 ],
			"obj-3::obj-51" : [ "toggle[4]", "toggle[4]", 0 ],
			"obj-10::obj-50" : [ "toggle[16]", "toggle[16]", 0 ],
			"obj-2::obj-126::obj-55" : [ "power", "power", 0 ],
			"obj-1::obj-3" : [ "live.slider[8]", "seed.x", 0 ],
			"obj-2::obj-126::obj-95" : [ "Freq", "Freq", 0 ],
			"obj-2::obj-27" : [ "live.dial[1]", "thresh max", 0 ],
			"obj-2::obj-200" : [ "live.gain~[2]", "input vol", 0 ],
			"obj-8::obj-50::obj-4" : [ "live.dial[14]", "live.dial[13]", 0 ],
			"obj-5::obj-10" : [ "live.slider[15]", "timestep", 0 ],
			"obj-7::obj-52" : [ "toggle[9]", "toggle[7]", 0 ],
			"obj-5::obj-55" : [ "live.slider[23]", "light.y", 0 ],
			"obj-9::obj-10" : [ "live.dial[15]", "time_scale", 0 ],
			"obj-7::obj-67" : [ "toggle[14]", "toggle[7]", 0 ],
			"obj-4::obj-19" : [ "function[2]", "function", 0 ],
			"obj-5::obj-21" : [ "toggle[5]", "toggle[5]", 0 ],
			"obj-7::obj-3" : [ "umenu[4]", "umenu[4]", 0 ],
			"obj-10::obj-3" : [ "toggle[20]", "toggle[18]", 0 ],
			"obj-2::obj-144::obj-29" : [ "Range", "wavefolder", 0 ],
			"obj-7::obj-39" : [ "live.dial[7]", "live.dial[6]", 0 ],
			"obj-3::obj-49" : [ "toggle[2]", "toggle[2]", 0 ],
			"obj-3::obj-21" : [ "button", "button", 0 ],
			"obj-2::obj-9::obj-129" : [ "Interval[1]", "Interval", 0 ],
			"obj-7::obj-18" : [ "live.dial[11]", "live.dial[10]", 0 ],
			"obj-1::obj-50::obj-21" : [ "toggle[21]", "toggle[21]", 0 ],
			"obj-10::obj-10" : [ "live.slider[12]", "live.slider[10]", 0 ],
			"obj-9::obj-15" : [ "live.dial[21]", "trail_rate", 0 ],
			"obj-1::obj-50::obj-19" : [ "function", "function", 0 ],
			"obj-10::obj-85" : [ "toggle[19]", "toggle[18]", 0 ],
			"obj-2::obj-9::obj-7" : [ "OutputRange[1]", "OutputRange", 0 ],
			"obj-2::obj-126::obj-51" : [ "CV2", "CV2", 0 ],
			"obj-1::obj-6" : [ "live.slider[5]", "seed.w", 0 ],
			"obj-5::obj-87" : [ "toggle[6]", "toggle[6]", 0 ],
			"obj-2::obj-61::obj-7" : [ "display", "display", 0 ],
			"obj-5::obj-14" : [ "live.slider[16]", "look.x", 0 ],
			"obj-7::obj-32" : [ "function[7]", "function", 0 ],
			"obj-7::obj-61" : [ "toggle[12]", "toggle[7]", 0 ],
			"obj-5::obj-47" : [ "live.slider[20]", "cam.y", 0 ],
			"obj-2::obj-144::obj-1" : [ "Bypass", "Bypass", 0 ],
			"obj-7::obj-38" : [ "live.dial[6]", "live.dial[6]", 0 ],
			"obj-3::obj-35" : [ "button[3]", "button[3]", 0 ],
			"obj-5::obj-88" : [ "function[5]", "function", 0 ],
			"obj-7::obj-34" : [ "live.dial[4]", "live.dial[2]", 0 ],
			"obj-3::obj-70" : [ "container2 _opacity", "container2 _opacity", 0 ],
			"obj-7::obj-45" : [ "toggle[7]", "toggle[7]", 0 ],
			"obj-10::obj-4" : [ "live.slider[10]", "live.slider[10]", 0 ],
			"obj-10::obj-55" : [ "toggle[17]", "toggle[17]", 0 ],
			"obj-1::obj-4" : [ "live.slider[7]", "seed.y", 0 ],
			"obj-3::obj-47" : [ "toggle", "toggle", 0 ],
			"obj-2::obj-126::obj-11" : [ "Resonance", "Res", 0 ],
			"obj-2::obj-41" : [ "live.dial[17]", "amp_vol", 0 ],
			"obj-5::obj-26" : [ "live.slider[18]", "look.z", 0 ],
			"obj-7::obj-55" : [ "toggle[10]", "toggle[7]", 0 ],
			"obj-8::obj-50::obj-19" : [ "function[8]", "function", 0 ],
			"obj-9::obj-44" : [ "number[1]", "number", 0 ],
			"obj-5::obj-1" : [ "function[6]", "function", 0 ],
			"obj-5::obj-54" : [ "live.slider[22]", "light.z", 0 ],
			"obj-7::obj-70" : [ "toggle[15]", "toggle[7]", 0 ],
			"obj-9::obj-43" : [ "number", "number", 0 ],
			"obj-5::obj-50" : [ "live.dial[3]", "metro", 0 ],
			"obj-2::obj-26" : [ "live.dial", "thresh min", 0 ],
			"obj-7::obj-40" : [ "live.dial[8]", "live.dial[6]", 0 ],
			"obj-18::obj-6" : [ "live.slider[4]", "seed.w", 0 ],
			"obj-3::obj-50" : [ "toggle[3]", "toggle[3]", 0 ],
			"obj-2::obj-112" : [ "live.button", "live.button", 0 ],
			"obj-3::obj-24" : [ "button[1]", "button[1]", 0 ],
			"obj-7::obj-17" : [ "live.dial[12]", "live.dial[10]", 0 ],
			"obj-18::obj-5" : [ "live.slider[3]", "seed.z", 0 ],
			"obj-10::obj-11" : [ "live.slider[13]", "live.slider[10]", 0 ],
			"obj-2::obj-126::obj-63" : [ "CV3", "CV3", 0 ],
			"obj-2::obj-71" : [ "live.dial[19]", "feedback", 0 ],
			"obj-2::obj-2" : [ "live.dial[18]", "noise cut", 0 ],
			"obj-18::obj-4" : [ "live.slider[2]", "seed.y", 0 ],
			"obj-5::obj-5" : [ "live.slider[14]", "scale", 0 ],
			"obj-9::obj-13" : [ "live.dial[20]", "fall_speed", 0 ],
			"obj-2::obj-126::obj-26" : [ "spectral", "spectral", 0 ],
			"obj-7::obj-46" : [ "toggle[8]", "toggle[7]", 0 ],
			"obj-18::obj-3" : [ "live.slider[1]", "seed.x", 0 ],
			"obj-5::obj-58" : [ "live.slider[24]", "light.x", 0 ],
			"obj-8::obj-50::obj-28" : [ "function[9]", "function", 0 ],
			"obj-7::obj-64" : [ "toggle[13]", "toggle[7]", 0 ],
			"obj-3::obj-37" : [ "button[4]", "button[4]", 0 ],
			"obj-5::obj-48" : [ "live.slider[21]", "cam.x", 0 ],
			"obj-2::obj-126::obj-98" : [ "Gain", "Gain", 0 ],
			"obj-7::obj-75" : [ "live.dial[13]", "live.dial[2]", 0 ],
			"obj-7::obj-35" : [ "live.dial[5]", "live.dial[2]", 0 ],
			"obj-3::obj-48" : [ "toggle[1]", "toggle[1]", 0 ],
			"obj-5::obj-20" : [ "function[4]", "function", 0 ],
			"obj-9::obj-20" : [ "live.dial[22]", "probability", 0 ],
			"obj-7::obj-19" : [ "live.dial[10]", "live.dial[10]", 0 ],
			"obj-10::obj-8" : [ "live.slider[11]", "live.slider[10]", 0 ],
			"obj-2::obj-5" : [ "live.gain~", "note_on", 0 ],
			"obj-2::obj-6" : [ "live.gain~[1]", "gain/trim", 0 ],
			"obj-10::obj-57" : [ "toggle[18]", "toggle[18]", 0 ],
			"obj-2::obj-126::obj-54" : [ "CV1", "CV1", 0 ],
			"obj-1::obj-5" : [ "live.slider[6]", "seed.z", 0 ],
			"obj-2::obj-45" : [ "live.numbox", "live.numbox", 0 ],
			"obj-2::obj-9::obj-33" : [ "InputRange[1]", "InputRange", 0 ],
			"obj-2::obj-126::obj-59" : [ "filter_mode", "filter_mode", 0 ],
			"obj-2::obj-38" : [ "live.dial[16]", "noise_cut", 0 ],
			"obj-3::obj-68" : [ "live.slider", "container0 _opacity", 0 ],
			"obj-5::obj-22" : [ "live.slider[17]", "look.y", 0 ],
			"obj-3::obj-61" : [ "umenu[2]", "umenu", 0 ],
			"obj-7::obj-58" : [ "toggle[11]", "toggle[7]", 0 ],
			"obj-1::obj-28" : [ "umenu[3]", "umenu[3]", 0 ],
			"obj-3::obj-42" : [ "umenu", "umenu", 0 ],
			"obj-5::obj-46" : [ "live.slider[19]", "cam.z", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"parameter_map" : 		{
			"midi" : 			{
				"live.slider" : 				{
					"srcname" : "77.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"scene1 _opacity" : 				{
					"srcname" : "78.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"container2 _opacity" : 				{
					"srcname" : "79.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"button" : 				{
					"srcname" : "41.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"toggle[1]" : 				{
					"srcname" : "42.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"toggle[2]" : 				{
					"srcname" : "43.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"toggle[3]" : 				{
					"srcname" : "44.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"toggle[4]" : 				{
					"srcname" : "57.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"toggle" : 				{
					"srcname" : "41.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"live.slider[10]" : 				{
					"srcname" : "49.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[11]" : 				{
					"srcname" : "50.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[12]" : 				{
					"srcname" : "51.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[13]" : 				{
					"srcname" : "52.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[8]" : 				{
					"srcname" : "29.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[7]" : 				{
					"srcname" : "30.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[6]" : 				{
					"srcname" : "31.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[5]" : 				{
					"srcname" : "32.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[14]" : 				{
					"srcname" : "13.ctrl.1.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[15]" : 				{
					"srcname" : "14.ctrl.1.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[18]" : 				{
					"srcname" : "35.ctrl.1.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[17]" : 				{
					"srcname" : "34.ctrl.1.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[16]" : 				{
					"srcname" : "33.ctrl.1.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[24]" : 				{
					"srcname" : "53.ctrl.1.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[23]" : 				{
					"srcname" : "54.ctrl.1.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[22]" : 				{
					"srcname" : "55.ctrl.1.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[19]" : 				{
					"srcname" : "19.ctrl.1.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[20]" : 				{
					"srcname" : "18.ctrl.1.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[21]" : 				{
					"srcname" : "17.ctrl.1.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"toggle[5]" : 				{
					"srcname" : "41.note.1.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"live.dial[3]" : 				{
					"srcname" : "15.ctrl.1.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial[2]" : 				{
					"srcname" : "13.ctrl.2.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial[4]" : 				{
					"srcname" : "14.ctrl.2.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial[5]" : 				{
					"srcname" : "15.ctrl.2.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial[7]" : 				{
					"srcname" : "29.ctrl.2.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial[8]" : 				{
					"srcname" : "30.ctrl.2.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial[9]" : 				{
					"srcname" : "31.ctrl.2.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"toggle[7]" : 				{
					"srcname" : "41.note.2.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"live.dial[10]" : 				{
					"srcname" : "17.ctrl.2.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial[11]" : 				{
					"srcname" : "18.ctrl.2.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial[12]" : 				{
					"srcname" : "19.ctrl.2.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"toggle[16]" : 				{
					"srcname" : "73.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"toggle[17]" : 				{
					"srcname" : "74.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"toggle[18]" : 				{
					"srcname" : "75.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"toggle[19]" : 				{
					"srcname" : "76.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"live.dial[18]" : 				{
					"srcname" : "13.ctrl.3.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"live.dial" : 				{
					"srcname" : "29.ctrl.3.chan.midi",
					"min" : 0.0,
					"max" : 0.4,
					"flags" : 2
				}
,
				"live.dial[1]" : 				{
					"srcname" : "30.ctrl.3.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"live.dial[17]" : 				{
					"srcname" : "49.ctrl.3.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"live.dial[16]" : 				{
					"srcname" : "50.ctrl.3.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"toggle[6]" : 				{
					"srcname" : "42.note.1.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3,
					"trigger" : 3
				}
,
				"toggle[8]" : 				{
					"srcname" : "41.note.2.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"toggle[9]" : 				{
					"srcname" : "42.note.2.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"toggle[10]" : 				{
					"srcname" : "43.note.2.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"toggle[11]" : 				{
					"srcname" : "44.note.2.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"toggle[12]" : 				{
					"srcname" : "57.note.2.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"toggle[13]" : 				{
					"srcname" : "58.note.2.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"toggle[14]" : 				{
					"srcname" : "59.note.2.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"toggle[15]" : 				{
					"srcname" : "60.note.2.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"live.slider[25]" : 				{
					"srcname" : "79.ctrl.2.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial[6]" : 				{
					"srcname" : "77.ctrl.2.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial[13]" : 				{
					"srcname" : "78.ctrl.2.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"toggle[20]" : 				{
					"srcname" : "89.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}
,
				"live.gain~[3]" : 				{
					"srcname" : "77.ctrl.3.chan.midi",
					"min" : -70.0,
					"max" : 6.0,
					"flags" : 2
				}
,
				"live.gain~[1]" : 				{
					"srcname" : "78.ctrl.3.chan.midi",
					"min" : -70.0,
					"max" : 6.0,
					"flags" : 2
				}
,
				"live.gain~" : 				{
					"srcname" : "79.ctrl.3.chan.midi",
					"min" : -70.0,
					"max" : 6.0,
					"flags" : 2
				}
,
				"toggle[21]" : 				{
					"srcname" : "92.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3
				}

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "main.js",
				"bootpath" : "~/Documents/openframeworks/of_v0.10.1_osx_release/apps/myApps/vjSystem/controller/nodejs",
				"patcherrelativepath" : "../nodejs",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "shader_select.maxpat",
				"bootpath" : "~/Documents/openframeworks/of_v0.10.1_osx_release/apps/myApps/vjSystem/controller/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "f3pb.maxpat",
				"bootpath" : "~/Documents/Max 8/Library",
				"patcherrelativepath" : "../../../../../../../Max 8/Library",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "container.maxpat",
				"bootpath" : "~/Documents/openframeworks/of_v0.10.1_osx_release/apps/myApps/vjSystem/controller/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ngate~.maxpat",
				"bootpath" : "C74:/docs/tutorial-patchers/msp-tut",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Spectral.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Scope",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "compel0_1.maxpat",
				"bootpath" : "~/Documents/Max 8/Library",
				"patcherrelativepath" : "../../../../../../../Max 8/Library",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "OSC-route.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"bgcolor" : [ 0.356862745098039, 0.356862745098039, 0.356862745098039, 1.0 ]
	}

}
