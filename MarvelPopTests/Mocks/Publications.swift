//
//  Publications.swift
//  MarvelPopTests
//
//  Created by Guiteras Cebrian, Gemma on 9/7/22.
//

import Foundation
@testable import MarvelPop

extension PublicationDataWrapperDTO {
    static var mockList: PublicationDataWrapperDTO? {
        do {
            let dto = try JSONDecoder().decode(PublicationDataWrapperDTO.self, from: publicationsMock.asData)
            return dto
        } catch {
            print(error)
            return nil
        }
    }
}

var publicationsMock = """
{
  "status" : "Ok",
  "data" : {
    "results" : [
      {
        "description" : "HAUNTED HULK PART 1 Which devilish dark figure dares to haunt the Hulk? With appearances from some of Marvel's most powerful heroes, will might be a match for malevolent magic?",
        "modified" : "2013-02-20T14:07:57-0500",
        "prices" : [
          {
            "type" : "printPrice",
            "price" : 3.9900000000000002
          },
          {
            "type" : "digitalPurchasePrice",
            "price" : 1.99
          }
        ],
        "thumbnail" : {
          "path" : "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/f\\/20\\/5ba3a68f2ddb5",
          "extension" : "jpg"
        },
        "title" : "Hulk (2008) #50",
        "diamondCode" : "FEB120598",
        "issn" : "1941-2142",
        "events" : {
          "returned" : 0,
          "collectionURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/40638\\/events",
          "items" : [

          ],
          "available" : 0
        },
        "upc" : "5960605992-05011",
        "images" : [
          {
            "path" : "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/f\\/20\\/5ba3a68f2ddb5",
            "extension" : "jpg"
          },
          {
            "path" : "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/e\\/d0\\/4f564bb0e1ebb",
            "extension" : "jpg"
          },
          {
            "path" : "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/4\\/30\\/4f56494174b9e",
            "extension" : "jpg"
          }
        ],
        "creators" : {
          "returned" : 6,
          "collectionURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/40638\\/creators",
          "items" : [
            {
              "name" : "Vc Clayton Cowles",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/10172",
              "role" : "letterer"
            },
            {
              "name" : "Carlo Pagulayan",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/537",
              "role" : "Penciller"
            },
            {
              "name" : "Mark Paniccia",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/4600",
              "role" : "editor"
            },
            {
              "name" : "Jeff Parker",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/824",
              "role" : "Writer"
            },
            {
              "name" : "Jason Paz",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/8695",
              "role" : "Inker"
            },
            {
              "name" : "Val Staples",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/832",
              "role" : "Colorist"
            }
          ],
          "available" : 6
        },
        "textObjects" : [
          {
            "type" : "issue_solicit_text",
            "text" : "&bull; Bonus-Sized! A Great Jumping On Point, As The Ghoulish Haunted Hulk Arc Begins!\\r\\n&bull; Who Or What Is The Dark Figure Hunting Red Hulk?\\r\\n&bull; Can Red Hulk&rsquo;s Might Match Malevolent Magic?\\r\\n&bull; Appearances By Dr. Strange, Red She-Hulk, Iron Man, Spider-Man, Daredevil And Others\\r\\nWe Aren&rsquo;t At Liberty To Divulge!",
            "language" : "en-us"
          },
          {
            "type" : "issue_preview_text",
            "text" : "HAUNTED HULK PART 1 Which devilish dark figure dares to haunt the Hulk? With appearances from some of Marvel's most powerful heroes, will might be a match for malevolent magic?",
            "language" : "en-us"
          }
        ],
        "pageCount" : 48,
        "ean" : "",
        "id" : 40638,
        "dates" : [
          {
            "type" : "onsaleDate",
            "date" : "2012-04-04T00:00:00-0400"
          },
          {
            "type" : "focDate",
            "date" : "2012-03-21T00:00:00-0400"
          },
          {
            "type" : "unlimitedDate",
            "date" : "2013-04-01T00:00:00-0400"
          },
          {
            "type" : "digitalPurchaseDate",
            "date" : "2012-04-04T00:00:00-0400"
          }
        ],
        "format" : "Comic",
        "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/40638",
        "stories" : {
          "returned" : 2,
          "collectionURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/40638\\/stories",
          "items" : [
            {
              "name" : "Hulk (2008) #50",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/92098",
              "type" : "cover"
            },
            {
              "name" : "Interior #92099",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/92099",
              "type" : "interiorStory"
            }
          ],
          "available" : 2
        },
        "isbn" : "",
        "urls" : [
          {
            "type" : "detail",
            "url" : "http:\\/\\/marvel.com\\/comics\\/issue\\/40638\\/hulk_2008_50?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
          },
          {
            "type" : "purchase",
            "url" : "http:\\/\\/comicstore.marvel.com\\/Hulk-50\\/digital-comic\\/25934?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
          },
          {
            "type" : "reader",
            "url" : "http:\\/\\/marvel.com\\/digitalcomics\\/view.htm?iid=25934&utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
          },
          {
            "type" : "inAppLink",
            "url" : "https:\\/\\/applink.marvel.com\\/issue\\/25934?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
          }
        ],
        "variants" : [
          {
            "name" : "Hulk (2008) #50 (Simonson Variant)",
            "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/42331"
          },
          {
            "name" : "Hulk (2008) #50 (Adams Variant)",
            "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/41939"
          }
        ],
        "issueNumber" : 50,
        "collections" : [

        ],
        "series" : {
          "name" : "Hulk (2008 - 2012)",
          "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3374"
        },
        "digitalId" : 25934,
        "collectedIssues" : [

        ],
        "characters" : {
          "returned" : 10,
          "collectionURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/40638\\/characters",
          "items" : [
            {
              "name" : "Abomination (Ultimate)",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1016823"
            },
            {
              "name" : "Betty Ross",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009548"
            },
            {
              "name" : "Daredevil",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009262"
            },
            {
              "name" : "Doctor Strange",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009282"
            },
            {
              "name" : "Iron Man",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009368"
            },
            {
              "name" : "Machine Man",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010805"
            },
            {
              "name" : "Red Hulk",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011360"
            },
            {
              "name" : "Spider-Man (Peter Parker)",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009610"
            },
            {
              "name" : "Thaddeus Ross",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011003"
            },
            {
              "name" : "Wong",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009720"
            }
          ],
          "available" : 10
        },
        "variantDescription" : ""
      },
      {
        "description" : "Travel back to the start of the schism between Charles Xavier and Erik Lensherr, the mutants known as Magneto and Professor X. Also, learn about the incident that crippled Xavier!",
        "modified" : "2014-06-16T10:56:49-0400",
        "prices" : [
          {
            "type" : "printPrice",
            "price" : 0
          },
          {
            "type" : "digitalPurchasePrice",
            "price" : 1.99
          }
        ],
        "thumbnail" : {
          "path" : "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/1\\/50\\/5baa3bf23cfb0",
          "extension" : "jpg"
        },
        "title" : "Ultimate X-Men (2001) #26",
        "diamondCode" : "",
        "issn" : "",
        "events" : {
          "returned" : 0,
          "collectionURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/15717\\/events",
          "items" : [

          ],
          "available" : 0
        },
        "upc" : "",
        "images" : [
          {
            "path" : "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/1\\/50\\/5baa3bf23cfb0",
            "extension" : "jpg"
          }
        ],
        "creators" : {
          "returned" : 15,
          "collectionURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/15717\\/creators",
          "items" : [
            {
              "name" : "Virtual Calligr",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/452",
              "role" : "letterer"
            },
            {
              "name" : "Chris Eliopoulos",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/12581",
              "role" : "letterer"
            },
            {
              "name" : "Studio F",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/4258",
              "role" : "letterer"
            },
            {
              "name" : "C.B. Cebulski",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/12574",
              "role" : "editor"
            },
            {
              "name" : "Ralph Macchio",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/1282",
              "role" : "editor"
            },
            {
              "name" : "Brian Smith",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/4732",
              "role" : "editor"
            },
            {
              "name" : "Mike Deodato",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/312",
              "role" : "penciller"
            },
            {
              "name" : "Ben Lai",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/340",
              "role" : "penciller"
            },
            {
              "name" : "Rai Lai",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/630",
              "role" : "penciller"
            },
            {
              "name" : "Richard Isanove",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/13055",
              "role" : "colorist"
            },
            {
              "name" : "Dave Sharpe",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/8429",
              "role" : "colorist"
            },
            {
              "name" : "Dave Stewart",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/501",
              "role" : "colorist"
            },
            {
              "name" : "Bruce Jones",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/52",
              "role" : "writer"
            },
            {
              "name" : "Mark Millar",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/88",
              "role" : "writer"
            },
            {
              "name" : "Adam Kubert",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/creators\\/2879",
              "role" : "penciller (cover)"
            }
          ],
          "available" : 15
        },
        "textObjects" : [
          {
            "type" : "issue_preview_text",
            "text" : "Travel back to the start of the schism between Charles Xavier and Erik Lensherr, the mutants known as Magneto and Professor X. Also, learn about the incident that crippled Xavier!",
            "language" : "en-us"
          }
        ],
        "pageCount" : 0,
        "ean" : "",
        "id" : 15717,
        "dates" : [
          {
            "type" : "onsaleDate",
            "date" : "2003-02-10T00:00:00-0500"
          },
          {
            "type" : "focDate",
            "date" : "-0001-11-30T00:00:00-0500"
          },
          {
            "type" : "unlimitedDate",
            "date" : "2007-11-28T00:00:00-0500"
          },
          {
            "type" : "digitalPurchaseDate",
            "date" : "2010-11-16T00:00:00-0500"
          }
        ],
        "format" : "Comic",
        "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/15717",
        "stories" : {
          "returned" : 5,
          "collectionURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/15717\\/stories",
          "items" : [
            {
              "name" : "Ultimate X-Men (2001) #26",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/31880",
              "type" : "cover"
            },
            {
              "name" : "Previously In Ultimate X-Men:",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/31881",
              "type" : "recap"
            },
            {
              "name" : "Return of the King: Prelude",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/31882",
              "type" : "interiorStory"
            },
            {
              "name" : "Free Preview of THE INCREDIBLE HULK #50",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/31883",
              "type" : "interiorStory"
            },
            {
              "name" : "[Ads]",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/31884",
              "type" : "ad"
            }
          ],
          "available" : 5
        },
        "isbn" : "",
        "urls" : [
          {
            "type" : "detail",
            "url" : "http:\\/\\/marvel.com\\/comics\\/issue\\/15717\\/ultimate_x-men_2001_26?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
          },
          {
            "type" : "purchase",
            "url" : "http:\\/\\/comicstore.marvel.com\\/Ultimate-X-Men-26\\/digital-comic\\/3774?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
          },
          {
            "type" : "reader",
            "url" : "http:\\/\\/marvel.com\\/digitalcomics\\/view.htm?iid=3774&utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
          },
          {
            "type" : "inAppLink",
            "url" : "https:\\/\\/applink.marvel.com\\/issue\\/3774?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
          }
        ],
        "variants" : [

        ],
        "issueNumber" : 26,
        "collections" : [
          {
            "name" : "ULTIMATE X-MEN VOL. 6: RETURN OF THE KING TPB (Trade Paperback)",
            "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/1186"
          },
          {
            "name" : "Ultimate X-Men Vol. 6: Return of the King (Trade Paperback)",
            "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/1151"
          }
        ],
        "series" : {
          "name" : "Ultimate X-Men (2001 - 2009)",
          "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/474"
        },
        "digitalId" : 3774,
        "collectedIssues" : [

        ],
        "characters" : {
          "returned" : 11,
          "collectionURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/15717\\/characters",
          "items" : [
            {
              "name" : "Abomination (Ultimate)",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1016823"
            },
            {
              "name" : "Beast (Ultimate)",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010908"
            },
            {
              "name" : "Colossus (Ultimate)",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010917"
            },
            {
              "name" : "Cyclops (Ultimate)",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010918"
            },
            {
              "name" : "Jean Grey (Ultimate)",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010946"
            },
            {
              "name" : "Magneto (Ultimate)",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010943"
            },
            {
              "name" : "Quicksilver (Ultimate)",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010963"
            },
            {
              "name" : "Sabretooth (Ultimate)",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010968"
            },
            {
              "name" : "Scarlet Witch (Ultimate)",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010971"
            },
            {
              "name" : "Storm (Ultimate)",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010978"
            },
            {
              "name" : "X-Men (Ultimate)",
              "resourceURI" : "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011109"
            }
          ],
          "available" : 11
        },
        "variantDescription" : ""
      }
    ],
    "offset" : 0,
    "count" : 2,
    "total" : 2,
    "limit" : 20
  },
  "code" : 200,
  "copyright" : "© 2022 MARVEL",
  "attributionText" : "Data provided by Marvel. © 2022 MARVEL",
      "attributionHTML": "<a href=\\"http:\\/\\/marvel.com\\">Data provided by Marvel. © 2022 MARVEL<\\/a>",
  "etag" : "f7b70fb1918b0465054ee4e5636689e759da53c0"
}
"""
