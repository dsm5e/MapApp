//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Коллизей",
            cityName: "Рим",
            coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
            description: "Колизей - это овальный амфитеатр в центре города Рим, Италия, недалеко от Римского форума. Это самый большой древний амфитеатр, когда-либо построенный, и по сей день является самым большим стоящим амфитеатром в мире, несмотря на свой возраст..",
            imageNames: [
                "rome-colosseum-1",
                "rome-colosseum-2",
                "rome-colosseum-3",
            ],
            link: "https://en.wikipedia.org/wiki/Colosseum"),
        Location(
            name: "Пантеон",
            cityName: "Рим",
            coordinates: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4769),
            description: "Пантеон - это бывший римский храм, а с 609 года и католическая церковь в Риме, Италия, на месте ранее возведенного храма, заказанного Марком Агриппой во время правления Августа.",
            imageNames: [
                "rome-pantheon-1",
                "rome-pantheon-2",
                "rome-pantheon-3",
            ],
            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
        Location(
            name: "Фонтан Треви",
            cityName: "Рим",
            coordinates: CLLocationCoordinate2D(latitude: 41.9009, longitude: 12.4833),
            description: "Фонтан Треви - это фонтан в квартале Треви в Риме, Италия, проектируемый итальянским архитектором Николо Сальви и завершенный Джузеппе Паннини. Высотой в 26,3 метра и шириной 49,15 метров, это самый большой барокко фонтан в городе и один из самых известных фонтанов в мире.",
            imageNames: [
                "rome-trevifountain-1",
                "rome-trevifountain-2",
                "rome-trevifountain-3",
            ],
            link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
        Location(
            name: "Эйфелева башня",
            cityName: "Париж",
            coordinates: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945),
            description: "Эйфелева башня - это каменно-железная решетчатая башня на площади Марса в Париже, Франция. Она названа в честь инженера Густава Эйфеля, чья компания проектировала и строила башню. Местно ее называют 'Ла дам де фер', она была построена с 1887 по 1889 годы в качестве центральной достопримечательности фестиваля 1889 года и первоначально была критикована некоторыми из ведущих французских художников и интеллектуалов за ее дизайн, но стала глобальным культурным иконой Франции и одним из самых узнаваемых зданий в мире.",
            imageNames: [
                "paris-eiffeltower-1",
                "paris-eiffeltower-2",
            ],
            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
        Location(
            name: "Лувр",
            cityName: "Париж",
            coordinates: CLLocationCoordinate2D(latitude: 48.8606, longitude: 2.3376),
            description: "Лувр или Луврский музей является самым посещаемым музеем в мире, расположенным по адресу Ривьер-де-Шамбор в Париже, Франция. Он был открыт публике в 1793 году и был домом для потрясающей коллекции произведений искусства и археологии из всего мира. Сегодня Лувр принадлежит трем государствам - Франции, Италии и Бельгии - и содержит более 380 000 произведений искусства и археологических артефактов.",
            imageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            link: "https://en.wikipedia.org/wiki/Louvre"),
        Location(
            name: "Кремль",
            cityName: "Москва",
            coordinates: CLLocationCoordinate2D(latitude: 55.7539, longitude: 37.6209),
            description: "Кремль - главный дворец в Москве, Россия, расположенный в Старом городе Москвы. Он является крупнейшим и самым значимым памятником архитектуры в Москве и одним из главных достопримечательностей России. Здесь находится кремлевская палата, Большой Красный Дворец и Алмазная Палата, а также большое количество других памятников истории и искусства.",
            imageNames: [
                "moscow-kremlin-1",
            "moscow-kremlin-2",
            "moscow-kremlin-3",
            ],
            link: "https://en.wikipedia.org/wiki/KremlinofMoscow"),
    ]
    
}
