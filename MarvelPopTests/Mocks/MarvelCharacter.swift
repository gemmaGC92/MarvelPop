//
//  MarvelCharacter.swift
//  MarvelPopTests
//
//  Created by Guiteras Cebrian, Gemma on 2/7/22.
//

import Foundation
@testable import MarvelPop

extension CharacterDTO {
    static var mock: CharacterDTO? {
        do {
            let dto = try JSONDecoder().decode(CharacterDTO.self, from: marvelCharacterMock.asData)
            return dto
        } catch {
            print(error)
            return nil
        }
    }
}

var marvelCharacterMock = """
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
}
"""
