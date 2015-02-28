using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac_2._1
{
    public partial class Default : System.Web.UI.Page
    {
        //list of strings (folders names)
         List <String> folderNames;
         List <String> filePrefixes;
         List <String> fileSuffixes;


         protected void Page_Load(object sender, EventArgs e)
         {
             initFontLists();
         
         if(!IsPostBack)
         {
             //takes a list, folder name, data types of things in list(string)

             //foreach element of type string

             foreach (string font in folderNames)
             {
               //  string formattedFontName = capitalise(font);

                   ddFonts.Items.Add(new ListItem(font));

                 //long way to do is this

                 // ListItem currentItem = new ListItem(font);
                 // ddFonts.Items.Add(currentItem);
             }


         }
               
         
         
         }
              private void initFontLists()
        {
                  //populated list
            folderNames = new List<string> {"cartoon", "copperDeco",
                                        "decoTwoTone", "embroidery", "fancy",
                                        "goldDeco", "green", "greenChunky",
                                        "ice", "letsFaceIt", "lights",
                                        "peppermintSnow", "polkadot", "rainbow",
                                        "seaScribe", "shadow", "snowflake",
                                        "teddy", "tiger", "victorian",
                                        "water", "wood", "zebra"};

            filePrefixes = new List<string> {"alphabet_", "copperdeco-",
                                         "", "embroidery-", "art_",
                                         "golddeco-", "", "109",
                                         "ice", "faceoff-", "",
                                         "peppermint-", "polkadot-","",
                                         "", "shad_", "snowflake-",
                                         "alphabear", "", "vic",
                                         "wr_", "wood", "zebra-"};

            fileSuffixes = new List<string> { "s","",
                                          "4", "", "",
                                          "", "", "",
                                          "", "", "1",
                                          "", "", "",
                                          "", "", "",
                                          "smblue", "", "",
                                          "", "", ""};
        }

              protected void btnDisplay_Click(object sender, EventArgs e)
              {
                  divDisplay.InnerHtml = "";
                  int selectedIndex = ddFonts.SelectedIndex;
                  string selectedFontName = ddFonts.SelectedValue.ToLower();
                  string userInput = tbxText.Text;
                  foreach (char currentLetter in userInput)
                  {
                      if(currentLetter == ' ')
                      {

                          divDisplay.InnerHtml += "&nbsp;";

                      }
                      else
                      {
                          int selectFolderIndex = folderNames.IndexOf(selectedFontName);
                          string fileName = "images/" + selectedFontName + "/" +
                              filePrefixes[selectFolderIndex]+currentLetter +
                              fileSuffixes[selectFolderIndex] + ".gif";

                          Image newImage = new Image();
                          newImage.ImageUrl = fileName;
                          divDisplay.Controls.Add(newImage);

                      }
                     
                  }
                    
              }
        }
    }
