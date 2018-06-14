//
//  ChartViewController.swift
//  ChartDemoFramework
//
//  Created by Hien Quang Tran on 9/6/18.
//  Copyright © 2018 hientrq. All rights reserved.
//

import UIKit
import Charts

final public class ChartViewController: UIViewController {
    
    public var pokemons: [Pokemon] = [] {
        didSet {
            let data = generateChartData(from: pokemons)
            data.setValueFont(.systemFont(ofSize: 8, weight: .light))
            data.setDrawValues(false)
            data.setValueTextColor(.white)
            
            radarChart.data = data
        }
    }
    
    private let categories: [String] = [
        "HP",
        "Attack",
        "Defense",
        "Sp. Attack",
        "Sp. Defense",
        "Speed"
    ]
    
    private lazy var radarChart: RadarChartView = {
        let chart = RadarChartView()
        chart.translatesAutoresizingMaskIntoConstraints = false
        
        chart.webLineWidth = 1
        chart.innerWebLineWidth = 1
        chart.innerWebColor = .lightGray
        chart.webColor = .lightGray
        chart.webAlpha = 1
        
        let xAxis = chart.xAxis
        xAxis.labelFont = .systemFont(ofSize: 9, weight: .light)
        xAxis.xOffset = 0
        xAxis.yOffset = 0
        xAxis.valueFormatter = self
        xAxis.labelTextColor = .white
        
        let yAxis = chart.yAxis
        yAxis.labelFont = .systemFont(ofSize: 9, weight: .light)
        yAxis.labelCount = 5
        yAxis.axisMinimum = 0
        yAxis.axisMaximum = 100
        yAxis.labelTextColor = .white
        yAxis.granularity = 20
        yAxis.xOffset = 0
        yAxis.yOffset = 0
        
        let l = chart.legend
        l.horizontalAlignment = .center
        l.verticalAlignment = .top
        l.orientation = .vertical
        l.drawInside = false
        l.font = .systemFont(ofSize: 10, weight: .light)
        l.xEntrySpace = 7
        l.yEntrySpace = 5
        l.textColor = .white
        
        return chart
    }()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(radarChart)
        view.backgroundColor = UIColor(red: 60.0/255.0, green: 65.0/255.0, blue: 82.0/255.0, alpha: 1)
        
        NSLayoutConstraint.activate([
            radarChart.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            radarChart.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            radarChart.leftAnchor.constraint(equalTo: view.leftAnchor),
            radarChart.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
    }
    
    private func generateChartData(from pokemons: [Pokemon]) -> RadarChartData {
        var dataSets: [RadarChartDataSet] = []
        
        for pokemon in pokemons {
            let entries = pokemon.stats.map { RadarChartDataEntry(value: $0) }
            
            let set = RadarChartDataSet(values: entries, label: pokemon.name)
            set.setColor(pokemon.type.color)
            set.fillColor = pokemon.type.color
            set.drawFilledEnabled = true
            set.fillAlpha = 0.5
            set.lineWidth = 2
            set.drawHighlightCircleEnabled = false
            set.setDrawHighlightIndicators(false)
            
            dataSets.append(set)
        }
        
        return RadarChartData(dataSets: dataSets)
    }
}

extension ChartViewController: IAxisValueFormatter {
    public func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        return categories[Int(value) % categories.count]
    }
}
