//
//  MarvelCharacters.swift
//  MarvelPopTests
//
//  Created by Guiteras Cebrian, Gemma on 2/7/22.
//

import Foundation
@testable import MarvelPop

extension CharacterDataWrapperDTO {
    static var mockList: CharacterDataWrapperDTO? {
        do {
            let dto = try JSONDecoder().decode(CharacterDataWrapperDTO.self, from: marvelCharactersMock.asData)
            return dto
        } catch {
            print(error)
            return nil
        }
    }
}

var marvelCharactersMock = """
{
    "status": "Ok",
    "data": {
        "results": [
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/c\\/e0\\/535fecbbb9784",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 12,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011334\\/comics",
                    "items": [
                        {
                            "name": "Avengers: The Initiative (2007) #14",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/21366"
                        },
                        {
                            "name": "Avengers: The Initiative (2007) #14 (SPOTLIGHT VARIANT)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/24571"
                        },
                        {
                            "name": "Avengers: The Initiative (2007) #15",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/21546"
                        },
                        {
                            "name": "Avengers: The Initiative (2007) #16",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/21741"
                        },
                        {
                            "name": "Avengers: The Initiative (2007) #17",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/21975"
                        },
                        {
                            "name": "Avengers: The Initiative (2007) #18",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/22299"
                        },
                        {
                            "name": "Avengers: The Initiative (2007) #18 (ZOMBIE VARIANT)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/22300"
                        },
                        {
                            "name": "Avengers: The Initiative (2007) #19",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/22506"
                        },
                        {
                            "name": "Deadpool (1997) #44",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/8500"
                        },
                        {
                            "name": "Marvel Premiere (1972) #35",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/10223"
                        },
                        {
                            "name": "Marvel Premiere (1972) #36",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/10224"
                        },
                        {
                            "name": "Marvel Premiere (1972) #37",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/10225"
                        }
                    ],
                    "available": 12
                },
                "series": {
                    "returned": 3,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011334\\/series",
                    "items": [
                        {
                            "name": "Avengers: The Initiative (2007 - 2010)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1945"
                        },
                        {
                            "name": "Deadpool (1997 - 2002)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2005"
                        },
                        {
                            "name": "Marvel Premiere (1972 - 1981)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2045"
                        }
                    ],
                    "available": 3
                },
                "id": 1011334,
                "stories": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011334\\/stories",
                    "items": [
                        {
                            "name": "Cover #19947",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/19947",
                            "type": "cover"
                        },
                        {
                            "name": "The 3-D Man!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/19948",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Cover #19949",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/19949",
                            "type": "cover"
                        },
                        {
                            "name": "The Devil's Music!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/19950",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Cover #19951",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/19951",
                            "type": "cover"
                        },
                        {
                            "name": "Code-Name:  The Cold Warrior!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/19952",
                            "type": "interiorStory"
                        },
                        {
                            "name": "AVENGERS: THE INITIATIVE (2007) #14",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/47184",
                            "type": "cover"
                        },
                        {
                            "name": "Avengers: The Initiative (2007) #14 - Int",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/47185",
                            "type": "interiorStory"
                        },
                        {
                            "name": "AVENGERS: THE INITIATIVE (2007) #15",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/47498",
                            "type": "cover"
                        },
                        {
                            "name": "Avengers: The Initiative (2007) #15 - Int",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/47499",
                            "type": "interiorStory"
                        },
                        {
                            "name": "AVENGERS: THE INITIATIVE (2007) #16",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/47792",
                            "type": "cover"
                        },
                        {
                            "name": "Avengers: The Initiative (2007) #16 - Int",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/47793",
                            "type": "interiorStory"
                        },
                        {
                            "name": "AVENGERS: THE INITIATIVE (2007) #17",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/48361",
                            "type": "cover"
                        },
                        {
                            "name": "Avengers: The Initiative (2007) #17 - Int",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/48362",
                            "type": "interiorStory"
                        },
                        {
                            "name": "AVENGERS: THE INITIATIVE (2007) #18",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/49103",
                            "type": "cover"
                        },
                        {
                            "name": "Avengers: The Initiative (2007) #18 - Int",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/49104",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Avengers: The Initiative (2007) #18, Zombie Variant - Int",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/49106",
                            "type": "interiorStory"
                        },
                        {
                            "name": "AVENGERS: THE INITIATIVE (2007) #19",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/49888",
                            "type": "cover"
                        },
                        {
                            "name": "Avengers: The Initiative (2007) #19 - Int",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/49889",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Avengers: The Initiative (2007) #14, Spotlight Variant - Int",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/54371",
                            "type": "interiorStory"
                        }
                    ],
                    "available": 21
                },
                "events": {
                    "returned": 1,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011334\\/events",
                    "items": [
                        {
                            "name": "Secret Invasion",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/269"
                        }
                    ],
                    "available": 1
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1011334\\/3-d_man?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "wiki",
                        "url": "http:\\/\\/marvel.com\\/universe\\/3-D_Man_(Chandler)?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1011334\\/3-d_man?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011334",
                "description": "",
                "modified": "2014-04-29T14:18:17-0400",
                "name": "3-D Man"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/3\\/20\\/5232158de5b16",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 4,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1017100\\/comics",
                    "items": [
                        {
                            "name": "FREE COMIC BOOK DAY 2013 1 (2013) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/47176"
                        },
                        {
                            "name": "Hulk (2008) #53",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/40632"
                        },
                        {
                            "name": "Hulk (2008) #54",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/40630"
                        },
                        {
                            "name": "Hulk (2008) #55",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/40628"
                        }
                    ],
                    "available": 4
                },
                "series": {
                    "returned": 2,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1017100\\/series",
                    "items": [
                        {
                            "name": "FREE COMIC BOOK DAY 2013 1 (2013)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/17765"
                        },
                        {
                            "name": "Hulk (2008 - 2012)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3374"
                        }
                    ],
                    "available": 2
                },
                "id": 1017100,
                "stories": {
                    "returned": 7,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1017100\\/stories",
                    "items": [
                        {
                            "name": "Hulk (2008) #55",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/92078",
                            "type": "cover"
                        },
                        {
                            "name": "Interior #92079",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/92079",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Hulk (2008) #54",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/92082",
                            "type": "cover"
                        },
                        {
                            "name": "Interior #92083",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/92083",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Hulk (2008) #53",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/92086",
                            "type": "cover"
                        },
                        {
                            "name": "Interior #92087",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/92087",
                            "type": "interiorStory"
                        },
                        {
                            "name": "cover from Free Comic Book Day 2013 (Avengers\\/Hulk) (2013) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/105929",
                            "type": "cover"
                        }
                    ],
                    "available": 7
                },
                "events": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1017100\\/events",
                    "items": [],
                    "available": 0
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/characters\\/76\\/a-bomb?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1017100\\/a-bomb_has?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1017100",
                "description": "Rick Jones has been Hulk's best bud since day one, but now he's more than a friend...he's a teammate! Transformed by a Gamma energy explosion, A-Bomb's thick, armored skin is just as strong and powerful as it is blue. And when he curls into action, he uses it like a giant bowling ball of destruction! ",
                "modified": "2013-09-18T15:54:04-0400",
                "name": "A-Bomb (HAS)"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/6\\/20\\/52602f21f29ec",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009144\\/comics",
                    "items": [
                        {
                            "name": "Ant-Man & the Wasp (2010) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/36763"
                        },
                        {
                            "name": "Avengers (1998) #67",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17553"
                        },
                        {
                            "name": "Avengers (1963) #87",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/7340"
                        },
                        {
                            "name": "Avengers and Power Pack Assemble! (2006) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/4214"
                        },
                        {
                            "name": "Avengers and Power Pack (2017) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/63217"
                        },
                        {
                            "name": "Avengers and Power Pack (2017) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/63218"
                        },
                        {
                            "name": "Avengers and Power Pack (2017) #5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/63219"
                        },
                        {
                            "name": "Avengers and Power Pack (2017) #6",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/63220"
                        },
                        {
                            "name": "Avengers by Brian Michael Bendis: The Complete Collection Vol. 2 (Trade Paperback)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/64790"
                        },
                        {
                            "name": "Avengers Vol. 2: Red Zone (Trade Paperback)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/1170"
                        },
                        {
                            "name": "Avengers Vol. II: Red Zone (Trade Paperback)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/1214"
                        },
                        {
                            "name": "Captain America (1998) #28",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/12787"
                        },
                        {
                            "name": "Captain America (1968) #132",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/7513"
                        },
                        {
                            "name": "Captain America (1968) #133",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/7514"
                        },
                        {
                            "name": "Captain America by Mark Waid, Ron Garney & Andy Kubert (Hardcover)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/65466"
                        },
                        {
                            "name": "Defenders (1972) #57",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/20367"
                        },
                        {
                            "name": "Incredible Hulks (2010) #606 (VARIANT)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/31068"
                        },
                        {
                            "name": "Indestructible Hulk (2012) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/46168"
                        },
                        {
                            "name": "Iron Man (2012) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/43944"
                        },
                        {
                            "name": "Iron Man (2012) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/49865"
                        }
                    ],
                    "available": 52
                },
                "series": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009144\\/series",
                    "items": [
                        {
                            "name": "Ant-Man & the Wasp (2010 - 2011)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/13082"
                        },
                        {
                            "name": "Avengers (1998 - 2004)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/354"
                        },
                        {
                            "name": "Avengers (1963 - 1996)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1991"
                        },
                        {
                            "name": "Avengers and Power Pack (2017)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/23123"
                        },
                        {
                            "name": "Avengers and Power Pack Assemble! (2006)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1046"
                        },
                        {
                            "name": "Avengers by Brian Michael Bendis: The Complete Collection Vol. 2 (2017)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/23600"
                        },
                        {
                            "name": "Avengers Vol. 2: Red Zone (2003)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/227"
                        },
                        {
                            "name": "Avengers Vol. II: Red Zone (2003)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/271"
                        },
                        {
                            "name": "Captain America (1998 - 2002)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1997"
                        },
                        {
                            "name": "Captain America (1968 - 1996)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1996"
                        },
                        {
                            "name": "Captain America by Mark Waid, Ron Garney & Andy Kubert (2017)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/23810"
                        },
                        {
                            "name": "Defenders (1972 - 1986)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3743"
                        },
                        {
                            "name": "Incredible Hulks (2010 - 2011)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/8842"
                        },
                        {
                            "name": "Indestructible Hulk (2012 - 2014)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/16583"
                        },
                        {
                            "name": "Iron Man (2012 - 2014)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/16593"
                        },
                        {
                            "name": "Iron Man (1968 - 1996)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2029"
                        },
                        {
                            "name": "Iron Man Epic Collection: Doom (2018)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/23915"
                        },
                        {
                            "name": "Marvel Adventures Super Heroes (2010 - 2012)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/9718"
                        },
                        {
                            "name": "Marvel Masterworks: Captain America Vol. 1 - 2nd Edition (2003)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/189"
                        },
                        {
                            "name": "MARVEL MASTERWORKS: CAPTAIN AMERICA VOL. 1 HC (2005)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1506"
                        }
                    ],
                    "available": 34
                },
                "id": 1009144,
                "stories": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009144\\/stories",
                    "items": [
                        {
                            "name": "Avengers and Power Pack Assemble! (2006) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/5800",
                            "type": "cover"
                        },
                        {
                            "name": "2 of 4 - 4XLS",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/5801",
                            "type": "interiorStory"
                        },
                        {
                            "name": "When the Unliving Strike",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/10253",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Cover #10255",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/10255",
                            "type": "cover"
                        },
                        {
                            "name": "The Enemy Within!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/10256",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Death Before Dishonor!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/10259",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Cover #10261",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/10261",
                            "type": "cover"
                        },
                        {
                            "name": "The End of A.I.M.!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/10262",
                            "type": "interiorStory"
                        },
                        {
                            "name": "The Red Skull Lives!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/11921",
                            "type": "interiorStory"
                        },
                        {
                            "name": "He Who Holds the Cosmic Cube",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/11930",
                            "type": "interiorStory"
                        },
                        {
                            "name": "The Maddening Mystery of the Inconceivable Adaptoid!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/11936",
                            "type": "interiorStory"
                        },
                        {
                            "name": "If This Be... Modok",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/11981",
                            "type": "interiorStory"
                        },
                        {
                            "name": "A Time to Die -- A Time to Live!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/11984",
                            "type": "interiorStory"
                        },
                        {
                            "name": "At the Mercy of the Maggia",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/11995",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Look Homeward, Avenger",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/15243",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Captain America (1968) #132",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/17518",
                            "type": "cover"
                        },
                        {
                            "name": "The Fearful Secret of Bucky Barnes",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/17519",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Captain America (1968) #133",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/17520",
                            "type": "cover"
                        },
                        {
                            "name": "Madness In the Slums",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/17521",
                            "type": "interiorStory"
                        },
                        {
                            "name": "In Sin Airy X",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28233",
                            "type": "interiorStory"
                        }
                    ],
                    "available": 54
                },
                "events": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009144\\/events",
                    "items": [],
                    "available": 0
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1009144\\/aim.?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "wiki",
                        "url": "http:\\/\\/marvel.com\\/universe\\/A.I.M.?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1009144\\/aim.?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009144",
                "description": "AIM is a terrorist organization bent on destroying the world.",
                "modified": "2013-10-17T14:41:30-0400",
                "name": "A.I.M."
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/b\\/40\\/image_not_available",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 14,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010699\\/comics",
                    "items": [
                        {
                            "name": "Dark Avengers (2012) #177",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/40776"
                        },
                        {
                            "name": "Dark Avengers (2012) #179",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/40773"
                        },
                        {
                            "name": "Dark Avengers (2012) #180",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/40774"
                        },
                        {
                            "name": "Dark Avengers (2012) #181",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/40778"
                        },
                        {
                            "name": "Dark Avengers (2012) #182",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/40787"
                        },
                        {
                            "name": "Dark Avengers (2012) #183",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/40786"
                        },
                        {
                            "name": "Hulk (2008) #43",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/38073"
                        },
                        {
                            "name": "Universe X (2000) #6",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/11910"
                        },
                        {
                            "name": "Universe X (2000) #7",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/11911"
                        },
                        {
                            "name": "Universe X (2000) #8",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/11912"
                        },
                        {
                            "name": "Universe X (2000) #9",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/11913"
                        },
                        {
                            "name": "Universe X (2000) #10",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/11903"
                        },
                        {
                            "name": "Universe X (2000) #11",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/11904"
                        },
                        {
                            "name": "Universe X (2000) #12",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/11905"
                        }
                    ],
                    "available": 14
                },
                "series": {
                    "returned": 3,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010699\\/series",
                    "items": [
                        {
                            "name": "Dark Avengers (2012 - 2013)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/789"
                        },
                        {
                            "name": "Hulk (2008 - 2012)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3374"
                        },
                        {
                            "name": "Universe X (2000 - 2001)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2085"
                        }
                    ],
                    "available": 3
                },
                "id": 1010699,
                "stories": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010699\\/stories",
                    "items": [
                        {
                            "name": "Universe X (2000) #10",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/25634",
                            "type": "cover"
                        },
                        {
                            "name": "Interior #25635",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/25635",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Universe X (2000) #12",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/25637",
                            "type": "cover"
                        },
                        {
                            "name": "Interior #25638",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/25638",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Universe X (2000) #6",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/25647",
                            "type": "cover"
                        },
                        {
                            "name": "Interior #25648",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/25648",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Universe X (2000) #7",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/25649",
                            "type": "cover"
                        },
                        {
                            "name": "Interior #25650",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/25650",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Universe X (2000) #8",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/25651",
                            "type": "cover"
                        },
                        {
                            "name": "Interior #25652",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/25652",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Universe X (2000) #9",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/25653",
                            "type": "cover"
                        },
                        {
                            "name": "Interior #25654",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/25654",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Universe X (2000) #11",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/67100",
                            "type": "cover"
                        },
                        {
                            "name": "Hulk (2008) #43",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/89190",
                            "type": "cover"
                        },
                        {
                            "name": "Interior #90002",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/90002",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Dark Avengers (2012) #179",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/92370",
                            "type": "cover"
                        },
                        {
                            "name": "Interior #92371",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/92371",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Dark Avengers (2012) #180",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/92372",
                            "type": "cover"
                        },
                        {
                            "name": "Interior #92373",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/92373",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Dark Avengers (2012) #177",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/92376",
                            "type": "cover"
                        }
                    ],
                    "available": 27
                },
                "events": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010699\\/events",
                    "items": [],
                    "available": 0
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/characters\\/2809\\/aaron_stack?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1010699\\/aaron_stack?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010699",
                "description": "",
                "modified": "1969-12-31T19:00:00-0500",
                "name": "Aaron Stack"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/9\\/50\\/4ce18691cbf04",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009146\\/comics",
                    "items": [
                        {
                            "name": "Avengers (1998) #61",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17547"
                        },
                        {
                            "name": "Avengers (1998) #62",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17548"
                        },
                        {
                            "name": "Avengers Vol. 1: World Trust (Trade Paperback)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/1098"
                        },
                        {
                            "name": "Earth X (1999) #7",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/8557"
                        },
                        {
                            "name": "EARTH X TPB [NEW PRINTING] (Trade Paperback)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/4241"
                        },
                        {
                            "name": "Hulk (2008) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/20863"
                        },
                        {
                            "name": "Hulk: Destruction (2005) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/2499"
                        },
                        {
                            "name": "Hulk (1999) #24",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/14424"
                        },
                        {
                            "name": "Hulk (1999) #25",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/14425"
                        },
                        {
                            "name": "Hulk (1999) #28",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/14428"
                        },
                        {
                            "name": "Hulk (1999) #50",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/14450"
                        },
                        {
                            "name": "Hulk (1999) #51",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/14451"
                        },
                        {
                            "name": "Hulk (1999) #53",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/14453"
                        },
                        {
                            "name": "Hulk (1999) #54",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/14454"
                        },
                        {
                            "name": "Incredible Hulk (1962) #137",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/8948"
                        },
                        {
                            "name": "Incredible Hulk (1962) #171",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/8982"
                        },
                        {
                            "name": "Incredible Hulk (1962) #194",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/9005"
                        },
                        {
                            "name": "Incredible Hulk (1962) #195",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/9006"
                        },
                        {
                            "name": "Incredible Hulk (1962) #196",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/9007"
                        },
                        {
                            "name": "Incredible Hulk (1962) #200",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/9011"
                        }
                    ],
                    "available": 54
                },
                "series": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009146\\/series",
                    "items": [
                        {
                            "name": "Avengers (1998 - 2004)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/354"
                        },
                        {
                            "name": "Avengers Vol. 1: World Trust (2003)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/158"
                        },
                        {
                            "name": "Earth X (1999 - 2000)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/378"
                        },
                        {
                            "name": "EARTH X TPB [NEW PRINTING] (2006)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1806"
                        },
                        {
                            "name": "Hulk (2008 - 2012)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3374"
                        },
                        {
                            "name": "Hulk (1999 - 2008)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/465"
                        },
                        {
                            "name": "Hulk: Destruction (2005)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/924"
                        },
                        {
                            "name": "Incredible Hulk (1962 - 1999)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2021"
                        },
                        {
                            "name": "Incredible Hulk Annual (1976 - 1994)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2983"
                        },
                        {
                            "name": "Incredible Hulk Epic Collection: The Hulk Must Die (2017)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/22424"
                        },
                        {
                            "name": "Incredible Hulk Vol. 4: Abominable (2003)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/212"
                        },
                        {
                            "name": "Incredible Hulk Vol. IV: Abominable (2003)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/244"
                        },
                        {
                            "name": "Incredible Hulks (2010 - 2011)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/8842"
                        },
                        {
                            "name": "Iron Man (1998 - 2004)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2572"
                        },
                        {
                            "name": "Irredeemable Ant-Man (2006 - 2007)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/977"
                        },
                        {
                            "name": "Irredeemable Ant-Man Vol. 1: Low-Life (2007)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2423"
                        },
                        {
                            "name": "Killraven (2002 - 2003)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3722"
                        },
                        {
                            "name": "KILLRAVEN PREMIERE HC (2007)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2437"
                        },
                        {
                            "name": "Maestro: World War M (2022 - Present)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/32108"
                        },
                        {
                            "name": "Marvel Cinematic Universe Guidebook: The Avengers Initiative (2017)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/21675"
                        }
                    ],
                    "available": 27
                },
                "id": 1009146,
                "stories": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009146\\/stories",
                    "items": [
                        {
                            "name": "4 of 4 - 4XLS",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/4946",
                            "type": "cover"
                        },
                        {
                            "name": "Irredeemable Ant-Man (2006) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/5496",
                            "type": "cover"
                        },
                        {
                            "name": "Cover #12370",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/12370",
                            "type": "cover"
                        },
                        {
                            "name": "Whosoever Harms the Hulk..!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/12372",
                            "type": "interiorStory"
                        },
                        {
                            "name": "[none]",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18419",
                            "type": "cover"
                        },
                        {
                            "name": "The Stars Mine Enemy",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18420",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Incredible Hulk (1962) #171",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18488",
                            "type": "cover"
                        },
                        {
                            "name": "Revenge",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18489",
                            "type": ""
                        },
                        {
                            "name": "Incredible Hulk (1962) #194",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18534",
                            "type": "cover"
                        },
                        {
                            "name": "The Day of the Locust!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18535",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Incredible Hulk (1962) #195",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18536",
                            "type": "cover"
                        },
                        {
                            "name": "Warfare In Wonderland!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18537",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Incredible Hulk (1962) #196",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18538",
                            "type": "cover"
                        },
                        {
                            "name": "The Abomination Proclamation!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18539",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Incredible Hulk (1962) #200",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18546",
                            "type": "cover"
                        },
                        {
                            "name": "An Intruder In the Mind!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18547",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Cover #18776",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18776",
                            "type": "cover"
                        },
                        {
                            "name": "Incredible Hulk (1962) #364",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18877",
                            "type": "cover"
                        },
                        {
                            "name": "Countdown Part 4: The Abomination",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18878",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Incredible Hulk (1962) #366",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18881",
                            "type": "cover"
                        }
                    ],
                    "available": 64
                },
                "events": {
                    "returned": 1,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009146\\/events",
                    "items": [
                        {
                            "name": "Chaos War",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/296"
                        }
                    ],
                    "available": 1
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/characters\\/81\\/abomination?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "wiki",
                        "url": "http:\\/\\/marvel.com\\/universe\\/Abomination?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1009146\\/abomination_emil_blonsky?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009146",
                "description": "Formerly known as Emil Blonsky, a spy of Soviet Yugoslavian origin working for the KGB, the Abomination gained his powers after receiving a dose of gamma radiation similar to that which transformed Bruce Banner into the incredible Hulk.",
                "modified": "2012-03-20T12:32:12-0400",
                "name": "Abomination (Emil Blonsky)"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/b\\/40\\/image_not_available",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 2,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1016823\\/comics",
                    "items": [
                        {
                            "name": "Hulk (2008) #50",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/40638"
                        },
                        {
                            "name": "Ultimate X-Men (2001) #26",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/15717"
                        }
                    ],
                    "available": 2
                },
                "series": {
                    "returned": 2,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1016823\\/series",
                    "items": [
                        {
                            "name": "Hulk (2008 - 2012)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3374"
                        },
                        {
                            "name": "Ultimate X-Men (2001 - 2009)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/474"
                        }
                    ],
                    "available": 2
                },
                "id": 1016823,
                "stories": {
                    "returned": 3,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1016823\\/stories",
                    "items": [
                        {
                            "name": "Free Preview of THE INCREDIBLE HULK #50",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/31883",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Hulk (2008) #50",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/92098",
                            "type": "cover"
                        },
                        {
                            "name": "Interior #92099",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/92099",
                            "type": "interiorStory"
                        }
                    ],
                    "available": 3
                },
                "events": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1016823\\/events",
                    "items": [],
                    "available": 0
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/characters\\/81\\/abomination?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1016823\\/abomination_ultimate?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1016823",
                "description": "",
                "modified": "2012-07-10T19:11:52-0400",
                "name": "Abomination (Ultimate)"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/1\\/b0\\/5269678709fb7",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009148\\/comics",
                    "items": [
                        {
                            "name": "A+X (2012) #8",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/43507"
                        },
                        {
                            "name": "Avengers (1963) #183",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/7045"
                        },
                        {
                            "name": "Avengers (1963) #184",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/7046"
                        },
                        {
                            "name": "Avengers (1963) #270",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/7142"
                        },
                        {
                            "name": "Avengers Academy (2010) #16",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/36481"
                        },
                        {
                            "name": "Avengers Academy (2010) #17",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/36480"
                        },
                        {
                            "name": "Avengers Academy (2010) #18",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/36479"
                        },
                        {
                            "name": "Avengers Academy (2010) #19",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/36484"
                        },
                        {
                            "name": "Avengers Annual (1967) #20",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17776"
                        },
                        {
                            "name": "Black Bolt (2017) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/63662"
                        },
                        {
                            "name": "Black Bolt (2017) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/64278"
                        },
                        {
                            "name": "Black Bolt (2017) #11",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/66533"
                        },
                        {
                            "name": "Black Bolt Vol. 1: Hard Time (Trade Paperback)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/65327"
                        },
                        {
                            "name": "Captain America (1998) #24",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/12783"
                        },
                        {
                            "name": "Dazzler (1981) #18",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/20427"
                        },
                        {
                            "name": "Dazzler (1981) #19",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/20428"
                        },
                        {
                            "name": "Deadpool (1997) #43",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/8499"
                        },
                        {
                            "name": "Fantastic Four (1998) #22",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/15541"
                        },
                        {
                            "name": "Fantastic Four (1961) #330",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/13151"
                        },
                        {
                            "name": "Fear Itself (2010) #2 (3rd Printing Variant)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/41433"
                        }
                    ],
                    "available": 96
                },
                "series": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009148\\/series",
                    "items": [
                        {
                            "name": "A+X (2012 - 2014)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/16450"
                        },
                        {
                            "name": "Avengers (1963 - 1996)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1991"
                        },
                        {
                            "name": "Avengers Academy (2010 - 2012)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/9086"
                        },
                        {
                            "name": "Avengers Annual (1967 - 1994)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1988"
                        },
                        {
                            "name": "Black Bolt (2017 - 2018)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/23121"
                        },
                        {
                            "name": "Black Bolt Vol. 1: Hard Time (2017)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/23778"
                        },
                        {
                            "name": "Captain America (1998 - 2002)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1997"
                        },
                        {
                            "name": "Dazzler (1981 - 1986)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3745"
                        },
                        {
                            "name": "Deadpool (1997 - 2002)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2005"
                        },
                        {
                            "name": "Fantastic Four (1961 - 1998)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2121"
                        },
                        {
                            "name": "Fantastic Four (1998 - 2012)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/421"
                        },
                        {
                            "name": "Fear Itself (2010 - 2011)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/13691"
                        },
                        {
                            "name": "Fear Itself: Fellowship of Fear (2011)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/13857"
                        },
                        {
                            "name": "Fear Itself: The Worthy (2011)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/13827"
                        },
                        {
                            "name": "Gamma Flight (2021)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/31372"
                        },
                        {
                            "name": "Heroes for Hire (1997 - 1999)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/20084"
                        },
                        {
                            "name": "Hulk (1999 - 2008)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/465"
                        },
                        {
                            "name": "Illuminati (2015 - 2016)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/20552"
                        },
                        {
                            "name": "Immortal Hulk (2018 - Present)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/24278"
                        },
                        {
                            "name": "Immortal Hulk Vol. 2: The Green Door (2019)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/24891"
                        }
                    ],
                    "available": 48
                },
                "id": 1009148,
                "stories": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009148\\/stories",
                    "items": [
                        {
                            "name": "1 of 1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/4988",
                            "type": "cover"
                        },
                        {
                            "name": "Punisher War Journal (2006) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/7866",
                            "type": "cover"
                        },
                        {
                            "name": "Journey Into Mystery (1952) #114",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/10997",
                            "type": "cover"
                        },
                        {
                            "name": "The Stronger I Am, the Sooner I Die",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/10998",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Journey Into Mystery (1952) #115",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/11000",
                            "type": "cover"
                        },
                        {
                            "name": "The Vengeance of the Thunder God",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/11001",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Journey Into Mystery (1952) #120",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/11022",
                            "type": "cover"
                        },
                        {
                            "name": "With My Hammer In Hand",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/11023",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Journey Into Mystery (1952) #121",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/11025",
                            "type": "cover"
                        },
                        {
                            "name": "The Power!  The Passion!  The Pride!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/11026",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Journey Into Mystery (1952) #122",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/11028",
                            "type": "cover"
                        },
                        {
                            "name": "Where Mortals Fear To Tread!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/11029",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Journey Into Mystery (1952) #123",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/11031",
                            "type": "cover"
                        },
                        {
                            "name": "While a Universe Trembles",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/11032",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Fantastic Four (1961) #330",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/12951",
                            "type": "cover"
                        },
                        {
                            "name": "Good Dreams!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/12952",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Avengers (1963) #183",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/14628",
                            "type": "cover"
                        },
                        {
                            "name": "Avengers (1963) #184",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/14630",
                            "type": "cover"
                        },
                        {
                            "name": "Avengers (1963) #270",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/14823",
                            "type": "cover"
                        },
                        {
                            "name": "Thor (1966) #206",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/16688",
                            "type": "cover"
                        }
                    ],
                    "available": 109
                },
                "events": {
                    "returned": 4,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009148\\/events",
                    "items": [
                        {
                            "name": "Civil War",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/238"
                        },
                        {
                            "name": "Fear Itself",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/302"
                        },
                        {
                            "name": "Secret Wars",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/270"
                        },
                        {
                            "name": "Siege",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/273"
                        }
                    ],
                    "available": 4
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/characters\\/84\\/absorbing_man?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "wiki",
                        "url": "http:\\/\\/marvel.com\\/universe\\/Absorbing_Man?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1009148\\/absorbing_man?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009148",
                "description": "",
                "modified": "2013-10-24T14:32:08-0400",
                "name": "Absorbing Man"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/9\\/30\\/535feab462a64",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 8,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009149\\/comics",
                    "items": [
                        {
                            "name": "Uncanny X-Men (1963) #402",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/13943"
                        },
                        {
                            "name": "Uncanny X-Men (1963) #404",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/13945"
                        },
                        {
                            "name": "Uncanny X-Men (1963) #405",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/13946"
                        },
                        {
                            "name": "Uncanny X-Men (1963) #406",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/13947"
                        },
                        {
                            "name": "Uncanny X-Men (1963) #429",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/13970"
                        },
                        {
                            "name": "Uncanny X-Men (1963) #431",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/13972"
                        },
                        {
                            "name": "X-Men: Alpha (1995) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/12386"
                        },
                        {
                            "name": "X-Men: The Complete Age of Apocalypse Epic Book 2 (Trade Paperback)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/2539"
                        }
                    ],
                    "available": 8
                },
                "series": {
                    "returned": 3,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009149\\/series",
                    "items": [
                        {
                            "name": "Uncanny X-Men (1963 - 2011)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2258"
                        },
                        {
                            "name": "X-Men: Alpha (1995)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2104"
                        },
                        {
                            "name": "X-Men: The Complete Age of Apocalypse Epic Book 2 (2005)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1583"
                        }
                    ],
                    "available": 3
                },
                "id": 1009149,
                "stories": {
                    "returned": 8,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009149\\/stories",
                    "items": [
                        {
                            "name": "A Beginning",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/26281",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Utility of Myth",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28352",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Army Ants",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28356",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Ballroom Blitzkrieg",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28358",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Staring Contests are for Suckers",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28360",
                            "type": "interiorStory"
                        },
                        {
                            "name": "The Draco Part One: Sins of the Father",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28407",
                            "type": "interiorStory"
                        },
                        {
                            "name": "The Draco Part Three",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28411",
                            "type": "interiorStory"
                        },
                        {
                            "name": "The Draco Part Four",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28413",
                            "type": "interiorStory"
                        }
                    ],
                    "available": 8
                },
                "events": {
                    "returned": 1,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009149\\/events",
                    "items": [
                        {
                            "name": "Age of Apocalypse",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/227"
                        }
                    ],
                    "available": 1
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1009149\\/abyss?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "wiki",
                        "url": "http:\\/\\/marvel.com\\/universe\\/Abyss_(alien)?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1009149\\/abyss?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009149",
                "description": "",
                "modified": "2014-04-29T14:10:43-0400",
                "name": "Abyss"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/3\\/80\\/4c00358ec7548",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 3,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010903\\/comics",
                    "items": [
                        {
                            "name": "Weapon X (1995) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/18099"
                        },
                        {
                            "name": "X-Men: Alpha (1995) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/12386"
                        },
                        {
                            "name": "X-Men: The Complete Age of Apocalypse Epic Book 2 (Trade Paperback)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/2539"
                        }
                    ],
                    "available": 3
                },
                "series": {
                    "returned": 3,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010903\\/series",
                    "items": [
                        {
                            "name": "Weapon X (1995)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3635"
                        },
                        {
                            "name": "X-Men: Alpha (1995)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2104"
                        },
                        {
                            "name": "X-Men: The Complete Age of Apocalypse Epic Book 2 (2005)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1583"
                        }
                    ],
                    "available": 3
                },
                "id": 1010903,
                "stories": {
                    "returned": 2,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010903\\/stories",
                    "items": [
                        {
                            "name": "X-Men: Alpha (1994) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/26280",
                            "type": "cover"
                        },
                        {
                            "name": "X-Facts",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/38448",
                            "type": ""
                        }
                    ],
                    "available": 2
                },
                "events": {
                    "returned": 1,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010903\\/events",
                    "items": [
                        {
                            "name": "Age of Apocalypse",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/227"
                        }
                    ],
                    "available": 1
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/characters\\/85\\/abyss?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "wiki",
                        "url": "http:\\/\\/marvel.com\\/universe\\/Abyss_(Age_of_Apocalypse)?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1010903\\/abyss_age_of_apocalypse?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010903",
                "description": "",
                "modified": "1969-12-31T19:00:00-0500",
                "name": "Abyss (Age of Apocalypse)"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/b\\/40\\/image_not_available",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011266\\/comics",
                    "items": [],
                    "available": 0
                },
                "series": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011266\\/series",
                    "items": [],
                    "available": 0
                },
                "id": 1011266,
                "stories": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011266\\/stories",
                    "items": [],
                    "available": 0
                },
                "events": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011266\\/events",
                    "items": [],
                    "available": 0
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/characters\\/2902\\/adam_destine?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "wiki",
                        "url": "http:\\/\\/marvel.com\\/universe\\/Destine,_Adam?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1011266\\/adam_destine?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011266",
                "description": "",
                "modified": "1969-12-31T19:00:00-0500",
                "name": "Adam Destine"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/a\\/f0\\/5202887448860",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010354\\/comics",
                    "items": [
                        {
                            "name": "All-New Guardians of the Galaxy Vol. 3: Infinity Quest (Trade Paperback)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/62151"
                        },
                        {
                            "name": "Annihilation: Conquest (2007) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17271"
                        },
                        {
                            "name": "Annihilation: Conquest (2007) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17405"
                        },
                        {
                            "name": "Annihilation: Conquest (2007) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17645"
                        },
                        {
                            "name": "Annihilation: Conquest (2007) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/20686"
                        },
                        {
                            "name": "Annihilation: Conquest (2007) #5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/20885"
                        },
                        {
                            "name": "Annihilation: Conquest (2007) #6",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/21016"
                        },
                        {
                            "name": "Avengers Forever (1998) #9",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/12412"
                        },
                        {
                            "name": "Avengers Legends Vol. I: Avengers Forever (Trade Paperback)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/1033"
                        },
                        {
                            "name": "CLANDESTINE CLASSIC PREMIERE HC (Hardcover)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/20731"
                        },
                        {
                            "name": "Doctor Strange, Sorcerer Supreme (1988) #27",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/20187"
                        },
                        {
                            "name": "Doctor Strange, Sorcerer Supreme (1988) #32",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/20193"
                        },
                        {
                            "name": "Doctor Strange, Sorcerer Supreme (1988) #36",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/20197"
                        },
                        {
                            "name": "Earth X (1999) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/8552"
                        },
                        {
                            "name": "Earth X (1999) #11",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/8550"
                        },
                        {
                            "name": "EARTH X TPB [NEW PRINTING] (Trade Paperback)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/4241"
                        },
                        {
                            "name": "Fantastic Four (1961) #172",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/12975"
                        },
                        {
                            "name": "Fantastic Four (1961) #370",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/13195"
                        },
                        {
                            "name": "Guardians of the Galaxy (2008) #17",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/25305"
                        },
                        {
                            "name": "All-New Guardians of the Galaxy (2017) #150",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/65547"
                        }
                    ],
                    "available": 188
                },
                "series": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010354\\/series",
                    "items": [
                        {
                            "name": "All-New Guardians of the Galaxy (2017)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/23058"
                        },
                        {
                            "name": "All-New Guardians of the Galaxy Vol. 3: Infinity Quest (2018)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/22778"
                        },
                        {
                            "name": "Annihilation: Conquest (2007)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3061"
                        },
                        {
                            "name": "Avengers Forever (1998 - 1999)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2111"
                        },
                        {
                            "name": "Avengers Legends Vol. I: Avengers Forever (2002)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/93"
                        },
                        {
                            "name": "CLANDESTINE CLASSIC PREMIERE HC (2008)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3874"
                        },
                        {
                            "name": "Doctor Strange, Sorcerer Supreme (1988 - 1996)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3741"
                        },
                        {
                            "name": "Earth X (1999 - 2000)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/378"
                        },
                        {
                            "name": "EARTH X TPB [NEW PRINTING] (2006)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1806"
                        },
                        {
                            "name": "Fantastic Four (1961 - 1998)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2121"
                        },
                        {
                            "name": "Guardians of the Galaxy (2008 - 2010)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/4885"
                        },
                        {
                            "name": "Guardians Of The Galaxy Annual (2019)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/27554"
                        },
                        {
                            "name": "Guardians Of The Galaxy Vol. 2: Faithless (2020)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/26496"
                        },
                        {
                            "name": "GUARDIANS OF THE GALAXY: ROAD TO ANNIHILATION VOL. 2 TPB (2017)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/22422"
                        },
                        {
                            "name": "Incredible Hulk (1962 - 1999)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2021"
                        },
                        {
                            "name": "Incredible Hulk Annual (1976 - 1994)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2983"
                        },
                        {
                            "name": "Infinity By Starlin & Hickman (2019)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/26307"
                        },
                        {
                            "name": "Infinity Countdown (2018)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/24050"
                        },
                        {
                            "name": "Infinity Countdown Prime (2018)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/24300"
                        },
                        {
                            "name": "Infinity Countdown: Adam Warlock (2018)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/23991"
                        }
                    ],
                    "available": 82
                },
                "id": 1010354,
                "stories": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010354\\/stories",
                    "items": [
                        {
                            "name": "Cover #1412",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/1412",
                            "type": "cover"
                        },
                        {
                            "name": "Cover #1602",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/1602",
                            "type": "cover"
                        },
                        {
                            "name": "Cover #1800",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/1800",
                            "type": "cover"
                        },
                        {
                            "name": "Cover #1842",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/1842",
                            "type": "cover"
                        },
                        {
                            "name": "WARLOCK (2004) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/3758",
                            "type": "cover"
                        },
                        {
                            "name": "WARLOCK (2004) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/3760",
                            "type": "cover"
                        },
                        {
                            "name": "WARLOCK (2004) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/3762",
                            "type": "cover"
                        },
                        {
                            "name": "WARLOCK (2004) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/3764",
                            "type": "cover"
                        },
                        {
                            "name": "Fantastic Four (1961) #172",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/12568",
                            "type": "cover"
                        },
                        {
                            "name": "Cry, the Bedeviled Planet!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/12569",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Forever Evil",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/13121",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Incredible Hulk (1962) #177",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18500",
                            "type": "cover"
                        },
                        {
                            "name": "Peril of the Paired Planets",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18501",
                            "type": ""
                        },
                        {
                            "name": "Triumph On Terra-Two",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/18503",
                            "type": ""
                        },
                        {
                            "name": "Cover #19847",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/19847",
                            "type": "cover"
                        },
                        {
                            "name": "Performance",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/19848",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Days of Future Present Part 4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/19859",
                            "type": "cover"
                        },
                        {
                            "name": "You Must Remember This",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/19860",
                            "type": "interiorStory"
                        },
                        {
                            "name": "The Adventures of Lockheed the Space Dragon and His Pet Girl, Kitty",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/19883",
                            "type": "interiorStory"
                        },
                        {
                            "name": "The Saga of Storm: Goddess of Thunder",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/19884",
                            "type": "cover"
                        }
                    ],
                    "available": 217
                },
                "events": {
                    "returned": 8,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010354\\/events",
                    "items": [
                        {
                            "name": "Annihilation: Conquest",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/293"
                        },
                        {
                            "name": "Atlantis Attacks",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/233"
                        },
                        {
                            "name": "Blood and Thunder",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/235"
                        },
                        {
                            "name": "Days of Future Present",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/240"
                        },
                        {
                            "name": "Infinity War",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/29"
                        },
                        {
                            "name": "Mutant Massacre",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/263"
                        },
                        {
                            "name": "Secret Wars II",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/271"
                        },
                        {
                            "name": "X-Tinction Agenda",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/280"
                        }
                    ],
                    "available": 8
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1010354\\/adam_warlock?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "wiki",
                        "url": "http:\\/\\/marvel.com\\/universe\\/Warlock,_Adam?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1010354\\/adam_warlock?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010354",
                "description": "Adam Warlock is an artificially created human who was born in a cocoon at a scientific complex called The Beehive.",
                "modified": "2013-08-07T13:49:06-0400",
                "name": "Adam Warlock"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/5\\/e0\\/4c0035c9c425d",
                    "extension": "gif"
                },
                "comics": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010846\\/comics",
                    "items": [],
                    "available": 0
                },
                "series": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010846\\/series",
                    "items": [],
                    "available": 0
                },
                "id": 1010846,
                "stories": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010846\\/stories",
                    "items": [],
                    "available": 0
                },
                "events": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010846\\/events",
                    "items": [],
                    "available": 0
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/characters\\/95\\/aegis?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "wiki",
                        "url": "http:\\/\\/marvel.com\\/universe\\/Aegis_%28Trey_Rollins%29?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1010846\\/aegis_trey_rollins?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1010846",
                "description": "",
                "modified": "1969-12-31T19:00:00-0500",
                "name": "Aegis (Trey Rollins)"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/b\\/40\\/image_not_available",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1017851\\/comics",
                    "items": [
                        {
                            "name": "Aero (2019) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/76349"
                        },
                        {
                            "name": "Aero (2019) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/76350"
                        },
                        {
                            "name": "Aero (2019) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/76351"
                        },
                        {
                            "name": "Aero (2019) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/76352"
                        },
                        {
                            "name": "Aero (2019) #5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/76353"
                        },
                        {
                            "name": "Aero (2019) #6",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/76354"
                        },
                        {
                            "name": "Aero (2019) #7",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/76355"
                        },
                        {
                            "name": "Aero (2019) #8",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/76356"
                        },
                        {
                            "name": "Aero (2019) #9",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/76357"
                        },
                        {
                            "name": "Aero (2019) #10",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/76358"
                        },
                        {
                            "name": "Aero (2019) #11",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/76359"
                        },
                        {
                            "name": "Aero (2019) #12",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/76360"
                        },
                        {
                            "name": "Agents of Atlas (2019) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/77001"
                        },
                        {
                            "name": "Agents of Atlas (2019) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/77003"
                        },
                        {
                            "name": "Agents of Atlas (2019) #5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/77005"
                        },
                        {
                            "name": "Atlantis Attacks (2020) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/83989"
                        },
                        {
                            "name": "Atlantis Attacks (2020) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/83993"
                        },
                        {
                            "name": "Atlantis Attacks (2020) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/83994"
                        },
                        {
                            "name": "Atlantis Attacks (2020) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/83995"
                        },
                        {
                            "name": "Atlantis Attacks (2020) #5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/83996"
                        }
                    ],
                    "available": 28
                },
                "series": {
                    "returned": 5,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1017851\\/series",
                    "items": [
                        {
                            "name": "Aero (2019 - 2020)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/27392"
                        },
                        {
                            "name": "Agents of Atlas (2019)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/27624"
                        },
                        {
                            "name": "Atlantis Attacks (2020)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/29600"
                        },
                        {
                            "name": "King In Black: Black Knight (2021)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/31376"
                        },
                        {
                            "name": "The Marvels (2021 - Present)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/28381"
                        }
                    ],
                    "available": 5
                },
                "id": 1017851,
                "stories": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1017851\\/stories",
                    "items": [
                        {
                            "name": "cover from Aero (2019) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/169570",
                            "type": "cover"
                        },
                        {
                            "name": "cover from Aero (2019) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/169572",
                            "type": "cover"
                        },
                        {
                            "name": "cover from Aero (2019) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/169574",
                            "type": "cover"
                        },
                        {
                            "name": "cover from Aero (2019) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/169576",
                            "type": "cover"
                        },
                        {
                            "name": "cover from Aero (2019) #5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/169578",
                            "type": "cover"
                        },
                        {
                            "name": "cover from Aero (2019) #6",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/169580",
                            "type": "cover"
                        },
                        {
                            "name": "cover from Aero (2019) #7",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/169582",
                            "type": "cover"
                        },
                        {
                            "name": "cover from Aero (2019) #8",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/169584",
                            "type": "cover"
                        },
                        {
                            "name": "cover from Aero (2019) #9",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/169586",
                            "type": "cover"
                        },
                        {
                            "name": "cover from Aero (2019) #10",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/169588",
                            "type": "cover"
                        },
                        {
                            "name": "cover from Aero (2019) #11",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/169590",
                            "type": "cover"
                        },
                        {
                            "name": "cover from Aero (2019) #12",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/169592",
                            "type": "cover"
                        },
                        {
                            "name": "cover from New Agents of Atlas (2019) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/170874",
                            "type": "cover"
                        },
                        {
                            "name": "cover from New Agents of Atlas (2019) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/170878",
                            "type": "cover"
                        },
                        {
                            "name": "cover from New Agents of Atlas (2019) #5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/170882",
                            "type": "cover"
                        },
                        {
                            "name": "cover from The Marvels (2029) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/178282",
                            "type": "cover"
                        },
                        {
                            "name": "cover from The Marvels (2029) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/178288",
                            "type": "cover"
                        },
                        {
                            "name": "cover from The Marvels (2029) #5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/178290",
                            "type": "cover"
                        },
                        {
                            "name": "cover from The Marvels (2029) #7",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/178294",
                            "type": "cover"
                        },
                        {
                            "name": "cover from The Marvels (2029) #8",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/178296",
                            "type": "cover"
                        }
                    ],
                    "available": 28
                },
                "events": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1017851\\/events",
                    "items": [],
                    "available": 0
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1017851\\/aero_aero?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1017851\\/aero_aero?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1017851",
                "description": "",
                "modified": "2021-08-27T17:52:34-0400",
                "name": "Aero (Aero)"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/c\\/a0\\/4ce5a9bf70e19",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 19,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1012717\\/comics",
                    "items": [
                        {
                            "name": "Avengers (1996) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17751"
                        },
                        {
                            "name": "Avengers (1996) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17756"
                        },
                        {
                            "name": "Avengers (1996) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17757"
                        },
                        {
                            "name": "Avengers (1996) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17758"
                        },
                        {
                            "name": "Avengers (1996) #8",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17762"
                        },
                        {
                            "name": "Avengers Fairy Tales (2008) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/21358"
                        },
                        {
                            "name": "Captain America (2018) #19",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/77235"
                        },
                        {
                            "name": "Fantastic Four (1961) #94",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/13304"
                        },
                        {
                            "name": "Marvel Masterworks: The Fantastic Four Vol.10 (Hardcover)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/4203"
                        },
                        {
                            "name": "Scarlet Witch (1994) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/54974"
                        },
                        {
                            "name": "Scarlet Witch (2015) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/57094"
                        },
                        {
                            "name": "Scarlet Witch (1994) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/54977"
                        },
                        {
                            "name": "Scarlet Witch (1994) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/54978"
                        },
                        {
                            "name": "Scarlet Witch (2015) #13",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/60028"
                        },
                        {
                            "name": "Ultimate Fantastic Four (2003) #54",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/21182"
                        },
                        {
                            "name": "Ultimate Fantastic Four (2003) #55",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/21332"
                        },
                        {
                            "name": "Ultimate Fantastic Four (2003) #56",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/21510"
                        },
                        {
                            "name": "Vision and the Scarlet Witch (1985) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/18460"
                        },
                        {
                            "name": "Vision and the Scarlet Witch (1985) #12",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/18458"
                        }
                    ],
                    "available": 19
                },
                "series": {
                    "returned": 9,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1012717\\/series",
                    "items": [
                        {
                            "name": "Avengers (1996 - 1997)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3621"
                        },
                        {
                            "name": "Avengers Fairy Tales (2008)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3971"
                        },
                        {
                            "name": "Captain America (2018 - Present)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/24503"
                        },
                        {
                            "name": "Fantastic Four (1961 - 1998)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2121"
                        },
                        {
                            "name": "Marvel Masterworks: The Fantastic Four Vol.10 (2006)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1693"
                        },
                        {
                            "name": "Scarlet Witch (1994)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/20338"
                        },
                        {
                            "name": "Scarlet Witch (2015 - 2017)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/20854"
                        },
                        {
                            "name": "Ultimate Fantastic Four (2003 - 2009)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/702"
                        },
                        {
                            "name": "Vision and the Scarlet Witch (1985 - 1986)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3655"
                        }
                    ],
                    "available": 9
                },
                "id": 1012717,
                "stories": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1012717\\/stories",
                    "items": [
                        {
                            "name": "The Return of the Frightful Four",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/13503",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Avengers (1996) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37673",
                            "type": "cover"
                        },
                        {
                            "name": "Avengers (1996) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37688",
                            "type": "cover"
                        },
                        {
                            "name": "Avengers (1996) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37690",
                            "type": "cover"
                        },
                        {
                            "name": "Avengers (1996) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37693",
                            "type": "cover"
                        },
                        {
                            "name": "Avengers (1996) #8",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37701",
                            "type": "cover"
                        },
                        {
                            "name": "VISION AND THE SCARLET WITCH (1985) #12",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/39320",
                            "type": "cover"
                        },
                        {
                            "name": "Ancestors",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/39325",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Ultimate Fantastic Four (2003) #54",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/46790",
                            "type": "cover"
                        },
                        {
                            "name": "Namor War 1 of 4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/46791",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Ultimate Fantastic Four (2003) #55",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/47112",
                            "type": "cover"
                        },
                        {
                            "name": "Namor War 2 of 4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/47113",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Avengers Fairy Tales (2008) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/47169",
                            "type": "cover"
                        },
                        {
                            "name": "The Wizard of Oz",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/47170",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Ultimate Fantastic Four (2003) #56",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/47425",
                            "type": "cover"
                        },
                        {
                            "name": "3 of 4 - Salem Seven",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/47426",
                            "type": "interiorStory"
                        },
                        {
                            "name": "cover from Scarlet Witch (2016) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/125005",
                            "type": "cover"
                        },
                        {
                            "name": "cover from Scarlet Witch (2015) #13",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/130587",
                            "type": "cover"
                        },
                        {
                            "name": "interior to Scarlet Witch (1994) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/135317",
                            "type": "interiorStory"
                        },
                        {
                            "name": "interior to Scarlet Witch (1994) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/135321",
                            "type": "interiorStory"
                        }
                    ],
                    "available": 23
                },
                "events": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1012717\\/events",
                    "items": [],
                    "available": 0
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1012717\\/agatha_harkness?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "wiki",
                        "url": "http:\\/\\/marvel.com\\/universe\\/Agatha%20Harkness?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1012717\\/agatha_harkness?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1012717",
                "description": "",
                "modified": "2021-08-06T11:30:56-0400",
                "name": "Agatha Harkness"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/4\\/60\\/52695285d6e7e",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011297\\/comics",
                    "items": [
                        {
                            "name": "Astonishing X-Men (2004) #21",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/6120"
                        },
                        {
                            "name": "Astonishing X-Men (2004) #22",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/6309"
                        },
                        {
                            "name": "Astonishing X-Men (2004) #23",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/16119"
                        },
                        {
                            "name": "Astonishing X-Men (2004) #24",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17353"
                        },
                        {
                            "name": "Astonishing X-Men (2004) #32",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/24503"
                        },
                        {
                            "name": "Astonishing X-Men (2004) #33",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/24504"
                        },
                        {
                            "name": "Astonishing X-Men (2004) #38",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/38318"
                        },
                        {
                            "name": "Astonishing X-Men (2004) #40",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/38319"
                        },
                        {
                            "name": "Astonishing X-Men (2004) #40 (I Am Captain America Variant)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/40024"
                        },
                        {
                            "name": "Cable and X-Force (2012) #8",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/45950"
                        },
                        {
                            "name": "Heralds (Trade Paperback)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/39890"
                        },
                        {
                            "name": "S.W.O.R.D. (2020) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/90340"
                        },
                        {
                            "name": "S.W.O.R.D. (2020) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/90341"
                        },
                        {
                            "name": "S.W.O.R.D. (2009) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/26232"
                        },
                        {
                            "name": "S.W.O.R.D. (2020) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/90342"
                        },
                        {
                            "name": "S.W.O.R.D. (2009) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/26233"
                        },
                        {
                            "name": "S.W.O.R.D. (2020) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/90343"
                        },
                        {
                            "name": "S.W.O.R.D. (2009) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/26234"
                        },
                        {
                            "name": "S.W.O.R.D. (2009) #5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/30518"
                        },
                        {
                            "name": "S.W.O.R.D. (2020) #5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/90344"
                        }
                    ],
                    "available": 27
                },
                "series": {
                    "returned": 7,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011297\\/series",
                    "items": [
                        {
                            "name": "Astonishing X-Men (2004 - 2013)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/744"
                        },
                        {
                            "name": "Cable and X-Force (2012 - 2014)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/16907"
                        },
                        {
                            "name": "Heralds (2010)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/13065"
                        },
                        {
                            "name": "S.W.O.R.D. (2020 - Present)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/31083"
                        },
                        {
                            "name": "S.W.O.R.D. (2009 - 2010)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/8233"
                        },
                        {
                            "name": "The Mighty Captain Marvel (2017 - 2018)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/22551"
                        },
                        {
                            "name": "X-Men Red (2022 - Present)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/32962"
                        }
                    ],
                    "available": 7
                },
                "id": 1011297,
                "stories": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011297\\/stories",
                    "items": [
                        {
                            "name": "Interior #3353",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/3353",
                            "type": "interiorStory"
                        },
                        {
                            "name": "ASTONISHING X-MEN (2004) #21",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/7670",
                            "type": "cover"
                        },
                        {
                            "name": "ASTONISHING X-MEN (2004) #22",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/8144",
                            "type": "cover"
                        },
                        {
                            "name": "ASTONISHING X-MEN (2004) #23",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/32919",
                            "type": "cover"
                        },
                        {
                            "name": "ASTONISHING X-MEN (2004) #24",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/36374",
                            "type": "cover"
                        },
                        {
                            "name": "ASTONISHING X-MEN (2004) #32",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/54039",
                            "type": "cover"
                        },
                        {
                            "name": "ASTONISHING X-MEN (2004) #33",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/54041",
                            "type": "cover"
                        },
                        {
                            "name": "S.W.O.R.D. (2009) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/57763",
                            "type": "cover"
                        },
                        {
                            "name": "S.W.O.R.D. (2009) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/57765",
                            "type": "cover"
                        },
                        {
                            "name": "S.W.O.R.D. (2009) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/57767",
                            "type": "cover"
                        },
                        {
                            "name": "S.W.O.R.D. (2009) #5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/69862",
                            "type": "cover"
                        },
                        {
                            "name": "ASTONISHING X-MEN (2004) #38",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/89830",
                            "type": "cover"
                        },
                        {
                            "name": "Astonishing X-Men (2004) #38",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/89900",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Heralds TPB",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/90548",
                            "type": "cover"
                        },
                        {
                            "name": "Interior #90819",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/90819",
                            "type": "interiorStory"
                        },
                        {
                            "name": " Interior  Astonishing X-Men (2004) #40",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/90853",
                            "type": "interiorStory"
                        },
                        {
                            "name": "ASTONISHING X-MEN (2004) #40",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/90944",
                            "type": "cover"
                        },
                        {
                            "name": "Cable and X-Force (2012) #8",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/103418",
                            "type": "cover"
                        },
                        {
                            "name": "story from Cable and X-Force (2012) #8",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/103419",
                            "type": "interiorStory"
                        },
                        {
                            "name": "cover from Captain Marvel (2016) #5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/133289",
                            "type": "cover"
                        }
                    ],
                    "available": 31
                },
                "events": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011297\\/events",
                    "items": [],
                    "available": 0
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1011297\\/agent_brand?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "wiki",
                        "url": "http:\\/\\/marvel.com\\/universe\\/Agent_Brand?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1011297\\/agent_brand?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011297",
                "description": "",
                "modified": "2013-10-24T13:09:30-0400",
                "name": "Agent Brand"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/b\\/40\\/image_not_available",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 18,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011031\\/comics",
                    "items": [
                        {
                            "name": "Agent X (2002) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17702"
                        },
                        {
                            "name": "Agent X (2002) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17709"
                        },
                        {
                            "name": "Agent X (2002) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17710"
                        },
                        {
                            "name": "Agent X (2002) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17711"
                        },
                        {
                            "name": "Agent X (2002) #5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17712"
                        },
                        {
                            "name": "Agent X (2002) #6",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17713"
                        },
                        {
                            "name": "Agent X (2002) #7",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17714"
                        },
                        {
                            "name": "Agent X (2002) #8",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17715"
                        },
                        {
                            "name": "Agent X (2002) #9",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17716"
                        },
                        {
                            "name": "Agent X (2002) #10",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17703"
                        },
                        {
                            "name": "Agent X (2002) #11",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17704"
                        },
                        {
                            "name": "Agent X (2002) #12",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17705"
                        },
                        {
                            "name": "Agent X (2002) #13",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17706"
                        },
                        {
                            "name": "Agent X (2002) #14",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/17707"
                        },
                        {
                            "name": "Agent X (2002) #15",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/394"
                        },
                        {
                            "name": "Cable & Deadpool (2004) #12",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/1649"
                        },
                        {
                            "name": "Cable & Deadpool (2004) #46 (Zombie Variant)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/21845"
                        },
                        {
                            "name": "Cable & Deadpool Vol. 2: The Burnt Offering (Trade Paperback)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/5761"
                        }
                    ],
                    "available": 18
                },
                "series": {
                    "returned": 3,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011031\\/series",
                    "items": [
                        {
                            "name": "Agent X (2002 - 2004)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/459"
                        },
                        {
                            "name": "Cable & Deadpool (2004 - 2008)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/693"
                        },
                        {
                            "name": "Cable & Deadpool Vol. 2: The Burnt Offering (2007)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1338"
                        }
                    ],
                    "available": 3
                },
                "id": 1011031,
                "stories": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011031\\/stories",
                    "items": [
                        {
                            "name": "AGENT X (2002) #15",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/1135",
                            "type": "cover"
                        },
                        {
                            "name": "CABLE & DEADPOOL (2004) #12",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/2484",
                            "type": "cover"
                        },
                        {
                            "name": "AGENT X (2002) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37514",
                            "type": "cover"
                        },
                        {
                            "name": "Dead Man's Switch Part One",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37515",
                            "type": "interiorStory"
                        },
                        {
                            "name": "AGENT X (2002) #10",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37516",
                            "type": "cover"
                        },
                        {
                            "name": "AGENT X (2002) #11",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37518",
                            "type": "cover"
                        },
                        {
                            "name": "AGENT X (2002) #13",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37521",
                            "type": "cover"
                        },
                        {
                            "name": "AGENT X (2002) #14",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37523",
                            "type": "cover"
                        },
                        {
                            "name": "AGENT X (2002) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37525",
                            "type": "cover"
                        },
                        {
                            "name": "Dead Man's Switch Part Two",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37526",
                            "type": "interiorStory"
                        },
                        {
                            "name": "AGENT X (2002) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37527",
                            "type": "cover"
                        },
                        {
                            "name": "Dead Man's Switch Part Three",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37528",
                            "type": "interiorStory"
                        },
                        {
                            "name": "AGENT X (2002) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37529",
                            "type": "cover"
                        },
                        {
                            "name": "Dead Man's Switch Part Four",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37530",
                            "type": "interiorStory"
                        },
                        {
                            "name": "AGENT X (2002) #5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37531",
                            "type": "cover"
                        },
                        {
                            "name": "Dead Man's Switch Part Five",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37532",
                            "type": "interiorStory"
                        },
                        {
                            "name": "AGENT X (2002) #6",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37533",
                            "type": "cover"
                        },
                        {
                            "name": "Dead Man's Switch Part Six",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37534",
                            "type": "interiorStory"
                        },
                        {
                            "name": "AGENT X (2002) #7",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/37535",
                            "type": "cover"
                        },
                        {
                            "name": "AGENT X (2002) #12",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/67703",
                            "type": "cover"
                        }
                    ],
                    "available": 23
                },
                "events": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011031\\/events",
                    "items": [],
                    "available": 0
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/characters\\/101\\/agent_x?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "wiki",
                        "url": "http:\\/\\/marvel.com\\/universe\\/Agent_X_(Nijo)?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1011031\\/agent_x_nijo?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011031",
                "description": "Originally a partner of the mind-altering assassin Black Swan, Nijo spied on Deadpool as part of the Swan's plan to exact revenge for Deadpool falsely taking credit for the Swan's assassination of the Four Winds crime family, which included Nijo's brother.",
                "modified": "1969-12-31T19:00:00-0500",
                "name": "Agent X (Nijo)"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/f\\/60\\/4c0042121d790",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009150\\/comics",
                    "items": [
                        {
                            "name": "Life of Wolverine Infinity Comic (2022) #6",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/100853"
                        },
                        {
                            "name": "Weapon X (2002) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/18082"
                        },
                        {
                            "name": "Weapon X (2002) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/18092"
                        },
                        {
                            "name": "Weapon X (2002) #12",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/18074"
                        },
                        {
                            "name": "Weapon X (2002) #13",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/246"
                        },
                        {
                            "name": "Weapon X: Days of Future Now (2005) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/2204"
                        },
                        {
                            "name": "Weapon X: Days of Future Now (2005) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/2324"
                        },
                        {
                            "name": "Weapon X: Days of Future Now (2005) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/2438"
                        },
                        {
                            "name": "Weapon X: Days of Future Now (2005) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/2439"
                        },
                        {
                            "name": "Weapon X: Days of Future Now (2005) #5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/3016"
                        },
                        {
                            "name": "Weapon X: Days of Future Now (Trade Paperback)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/3357"
                        },
                        {
                            "name": "Weapon X: The Draft – Agent Zero (2002) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/18408"
                        },
                        {
                            "name": "Wolverine (1988) #60",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/14182"
                        },
                        {
                            "name": "Wolverine (1988) #61",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/14183"
                        },
                        {
                            "name": "Wolverine (1988) #62",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/14184"
                        },
                        {
                            "name": "Wolverine (1988) #63",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/14185"
                        },
                        {
                            "name": "Wolverine (1988) #64",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/14186"
                        },
                        {
                            "name": "Wolverine (1988) #67",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/14189"
                        },
                        {
                            "name": "Wolverine (1988) #68",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/14190"
                        },
                        {
                            "name": "Wolverine (1988) #87",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/14211"
                        }
                    ],
                    "available": 29
                },
                "series": {
                    "returned": 10,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009150\\/series",
                    "items": [
                        {
                            "name": "Life of Wolverine Infinity Comic (2022 - Present)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/34445"
                        },
                        {
                            "name": "Weapon X (2002 - 2004)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/543"
                        },
                        {
                            "name": "Weapon X: Days of Future Now (2006)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1478"
                        },
                        {
                            "name": "Weapon X: Days of Future Now (2005)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/869"
                        },
                        {
                            "name": "Weapon X: The Draft – Agent Zero (2002)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3649"
                        },
                        {
                            "name": "Wolverine (1988 - 2003)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2262"
                        },
                        {
                            "name": "WOLVERINE\\/DEADPOOL: WEAPON X TPB (1999)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/84"
                        },
                        {
                            "name": "X-Man (1995 - 2000)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3643"
                        },
                        {
                            "name": "X-Men (1991 - 2001)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/2265"
                        },
                        {
                            "name": "X-Men Unlimited (1993 - 2003)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/3637"
                        }
                    ],
                    "available": 10
                },
                "id": 1009150,
                "stories": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009150\\/stories",
                    "items": [
                        {
                            "name": "WEAPON X (2002) #13",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/1131",
                            "type": "cover"
                        },
                        {
                            "name": "1 of 5 - 5XLS",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/4603",
                            "type": "interiorStory"
                        },
                        {
                            "name": "2 of 5 - 5XLS",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/4605",
                            "type": "interiorStory"
                        },
                        {
                            "name": "3 of 5 - 5XLS",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/4606",
                            "type": "cover"
                        },
                        {
                            "name": "4 of 5 - 5XLS",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/4608",
                            "type": "cover"
                        },
                        {
                            "name": "5 of 5 - 5XLS",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/4610",
                            "type": "cover"
                        },
                        {
                            "name": "The Hunted Part 2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28706",
                            "type": "interiorStory"
                        },
                        {
                            "name": "The Hunted Part 5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28712",
                            "type": "interiorStory"
                        },
                        {
                            "name": "The Logan Files Epilogue",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28738",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Counting Coup",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28881",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Nightmare Quest!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28883",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Reunion!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28885",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Bastions of Glory!",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28887",
                            "type": "interiorStory"
                        },
                        {
                            "name": "What Goes Around...",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28889",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Valley O' Death",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28895",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Epsilon Red",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28897",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Showdown In Lowtown",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/28941",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Last Stand",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/29125",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Over...Again",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/29139",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Second Contact",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/38511",
                            "type": "interiorStory"
                        }
                    ],
                    "available": 31
                },
                "events": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009150\\/events",
                    "items": [],
                    "available": 0
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/characters\\/102\\/agent_zero?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "wiki",
                        "url": "http:\\/\\/marvel.com\\/universe\\/Agent_Zero?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1009150\\/agent_zero?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1009150",
                "description": "",
                "modified": "1969-12-31T19:00:00-0500",
                "name": "Agent Zero"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/9\\/a0\\/4ce18a834b7f5",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011198\\/comics",
                    "items": [
                        {
                            "name": "Agents of Atlas (2019) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/77001"
                        },
                        {
                            "name": "Agents of Atlas (2009) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/23659"
                        },
                        {
                            "name": "Agents of Atlas (2006) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/4801"
                        },
                        {
                            "name": "Agents of Atlas (2009) #1 (50\\/50 COVER)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/23660"
                        },
                        {
                            "name": "Agents of Atlas (2006) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/5089"
                        },
                        {
                            "name": "Agents of Atlas (2009) #2",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/23825"
                        },
                        {
                            "name": "Agents of Atlas (2009) #2 (BACHALO 2ND PRINTING VARIANT)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/27402"
                        },
                        {
                            "name": "Agents of Atlas (2009) #2 (MCGUINNESS VARIANT)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/23824"
                        },
                        {
                            "name": "Agents of Atlas (2006) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/5241"
                        },
                        {
                            "name": "Agents of Atlas (2009) #3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/24015"
                        },
                        {
                            "name": "Agents of Atlas (2009) #3 (Wolverine Art Appreciation Variant)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/24017"
                        },
                        {
                            "name": "Agents of Atlas (2009) #3 (MCGUINNESS VARIANT)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/24016"
                        },
                        {
                            "name": "Agents of Atlas (2009) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/24219"
                        },
                        {
                            "name": "Agents of Atlas (2006) #4",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/5404"
                        },
                        {
                            "name": "Agents of Atlas (2006) #5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/5665"
                        },
                        {
                            "name": "Agents of Atlas (2009) #5",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/24221"
                        },
                        {
                            "name": "Agents of Atlas (2009) #5 (MCGUINNESS VARIANT)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/24222"
                        },
                        {
                            "name": "Agents of Atlas (2006) #6",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/5842"
                        },
                        {
                            "name": "Agents of Atlas (2009) #6",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/24360"
                        },
                        {
                            "name": "Agents of Atlas (2009) #7",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/24361"
                        }
                    ],
                    "available": 45
                },
                "series": {
                    "returned": 13,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011198\\/series",
                    "items": [
                        {
                            "name": "Agents of Atlas (2019)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/27624"
                        },
                        {
                            "name": "Agents of Atlas (2006 - 2007)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1097"
                        },
                        {
                            "name": "Agents of Atlas (2009)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/6807"
                        },
                        {
                            "name": "AGENTS OF ATLAS PREMIERE HC (2007)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1980"
                        },
                        {
                            "name": "Agents of Atlas: The Complete Collection Vol. 1 (2018)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/24134"
                        },
                        {
                            "name": "Atlantis Attacks (2020)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/29600"
                        },
                        {
                            "name": "Atlas (2010)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/9782"
                        },
                        {
                            "name": "Avengers Vs. Atlas (2010)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/9181"
                        },
                        {
                            "name": "Dark Reign: New Nation (2008)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/6415"
                        },
                        {
                            "name": "Incoming! (2019)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/27620"
                        },
                        {
                            "name": "War of the Realms: New Agents of Atlas (2019)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/27505"
                        },
                        {
                            "name": "War Of The Realms: New Agents Of Atlas (2019)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/27374"
                        },
                        {
                            "name": "Wolverine: Prehistory (2017)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/22365"
                        }
                    ],
                    "available": 13
                },
                "id": 1011198,
                "stories": {
                    "returned": 20,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011198\\/stories",
                    "items": [
                        {
                            "name": "1 of 6 - 6 XLS-",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/6008",
                            "type": "cover"
                        },
                        {
                            "name": "1 of 6 - 6 XLS-",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/6009",
                            "type": "interiorStory"
                        },
                        {
                            "name": "2 of 6 - 6 XLS -",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/6010",
                            "type": "cover"
                        },
                        {
                            "name": "2 of 6 - 6 XLS -",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/6011",
                            "type": "interiorStory"
                        },
                        {
                            "name": "3 of 6 - 6 XLS -",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/6012",
                            "type": "cover"
                        },
                        {
                            "name": "3 of 6 - 6 XLS -",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/6013",
                            "type": "interiorStory"
                        },
                        {
                            "name": "4 of 6 - 6 XLS -",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/6014",
                            "type": "cover"
                        },
                        {
                            "name": "4 of 6 - 6 XLS -",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/6015",
                            "type": "interiorStory"
                        },
                        {
                            "name": "5 of 6 - 6 XLS -",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/6016",
                            "type": "cover"
                        },
                        {
                            "name": "5 of 6 - 6 XLS -",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/6017",
                            "type": "interiorStory"
                        },
                        {
                            "name": "5 of 6 - Story A - 6XLS",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/6018",
                            "type": "cover"
                        },
                        {
                            "name": "5 of 6 - Story A - 6XLS",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/6019",
                            "type": "interiorStory"
                        },
                        {
                            "name": "1 of 1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/51050",
                            "type": "cover"
                        },
                        {
                            "name": "1 of 3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/52393",
                            "type": "interiorStory"
                        },
                        {
                            "name": "1 of 3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/52395",
                            "type": "interiorStory"
                        },
                        {
                            "name": "2 of 3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/52861",
                            "type": "interiorStory"
                        },
                        {
                            "name": "2 of 3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/52863",
                            "type": "interiorStory"
                        },
                        {
                            "name": "3 of 3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/53263",
                            "type": "interiorStory"
                        },
                        {
                            "name": "3 of 3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/53265",
                            "type": "interiorStory"
                        },
                        {
                            "name": "3 of 3",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/53266",
                            "type": "interiorStory"
                        }
                    ],
                    "available": 52
                },
                "events": {
                    "returned": 1,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011198\\/events",
                    "items": [
                        {
                            "name": "Dark Reign",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/318"
                        }
                    ],
                    "available": 1
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1011198\\/agents_of_atlas?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "wiki",
                        "url": "http:\\/\\/marvel.com\\/universe\\/Agents_of_Atlas?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1011198\\/agents_of_atlas?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011198",
                "description": "",
                "modified": "2016-02-03T10:25:22-0500",
                "name": "Agents of Atlas"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/b\\/40\\/image_not_available",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011175\\/comics",
                    "items": [],
                    "available": 0
                },
                "series": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011175\\/series",
                    "items": [],
                    "available": 0
                },
                "id": 1011175,
                "stories": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011175\\/stories",
                    "items": [],
                    "available": 0
                },
                "events": {
                    "returned": 0,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011175\\/events",
                    "items": [],
                    "available": 0
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/characters\\/105\\/aginar?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "wiki",
                        "url": "http:\\/\\/marvel.com\\/universe\\/Aginar?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1011175\\/aginar?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011175",
                "description": "",
                "modified": "1969-12-31T19:00:00-0500",
                "name": "Aginar"
            },
            {
                "thumbnail": {
                    "path": "http:\\/\\/i.annihil.us\\/u\\/prod\\/marvel\\/i\\/mg\\/b\\/40\\/image_not_available",
                    "extension": "jpg"
                },
                "comics": {
                    "returned": 4,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011136\\/comics",
                    "items": [
                        {
                            "name": "Annihilation: Silver Surfer (2006) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/4108"
                        },
                        {
                            "name": "Heroes Reborn: Iron Man (Trade Paperback)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/5589"
                        },
                        {
                            "name": "Iron Man (1996) #11",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/16330"
                        },
                        {
                            "name": "Iron Man (1996) #12",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/comics\\/16331"
                        }
                    ],
                    "available": 4
                },
                "series": {
                    "returned": 3,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011136\\/series",
                    "items": [
                        {
                            "name": "Annihilation: Silver Surfer (2006)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1078"
                        },
                        {
                            "name": "Heroes Reborn: Iron Man (2006)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/1814"
                        },
                        {
                            "name": "Iron Man (1996 - 1998)",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/series\\/13577"
                        }
                    ],
                    "available": 3
                },
                "id": 1011136,
                "stories": {
                    "returned": 3,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011136\\/stories",
                    "items": [
                        {
                            "name": "Annihilation: Silver Surfer (2006) #1",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/5925",
                            "type": "cover"
                        },
                        {
                            "name": "Magical Mystery Tour",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/34082",
                            "type": "interiorStory"
                        },
                        {
                            "name": "Matters of the Heart",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/stories\\/34085",
                            "type": "interiorStory"
                        }
                    ],
                    "available": 3
                },
                "events": {
                    "returned": 1,
                    "collectionURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011136\\/events",
                    "items": [
                        {
                            "name": "Annihilation",
                            "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/events\\/229"
                        }
                    ],
                    "available": 1
                },
                "urls": [
                    {
                        "type": "detail",
                        "url": "http:\\/\\/marvel.com\\/characters\\/109\\/air-walker?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "wiki",
                        "url": "http:\\/\\/marvel.com\\/universe\\/Air-Walker_(Gabriel_Lan)?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    },
                    {
                        "type": "comiclink",
                        "url": "http:\\/\\/marvel.com\\/comics\\/characters\\/1011136\\/air-walker_gabriel_lan?utm_campaign=apiRef&utm_source=c89204bb01e8bff368a2ca6fcb02d174"
                    }
                ],
                "resourceURI": "http:\\/\\/gateway.marvel.com\\/v1\\/public\\/characters\\/1011136",
                "description": "",
                "modified": "1969-12-31T19:00:00-0500",
                "name": "Air-Walker (Gabriel Lan)"
            }
        ],
        "offset": 0,
        "count": 20,
        "total": 1562,
        "limit": 20
    },
    "code": 200,
    "copyright": "© 2022 MARVEL",
    "attributionText": "Data provided by Marvel. © 2022 MARVEL",
    "attributionHTML": "<a href=\\"http:\\/\\/marvel.com\\">Data provided by Marvel. © 2022 MARVEL<\\/a>",
    "etag": "fa918a82dea930735b7b6aac839e65da2feb8c92"
}
"""
