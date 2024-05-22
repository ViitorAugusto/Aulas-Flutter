import 'package:flutter/material.dart';
import 'package:primeiro_app/pages/page-imc/widgets/imc_guage_page.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ImcSetStatePage extends StatelessWidget {
  const ImcSetStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IMC SetState'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SfRadialGauge(
                axes: [
                  RadialAxis(
                    showAxisLine: false,
                    showTicks: false,
                    showLabels: false,
                    minimum: 12.5,
                    maximum: 47.9,
                    ranges: [
                      ImcGaugeRange(
                          color: Colors.blue,
                          start: 12.5,
                          end: 18.5,
                          label: 'Magreza'),
                      ImcGaugeRange(
                          color: Colors.green,
                          start: 18.5,
                          end: 24.5,
                          label: 'Normal'),
                      ImcGaugeRange(
                          color: Colors.orange,
                          start: 24.5,
                          end: 29.9,
                          label: 'Sobrepeso'),
                      ImcGaugeRange(
                          color: Colors.red[500]!,
                          start: 29.9,
                          end: 39.9,
                          label: 'Obesidade'),
                      ImcGaugeRange(
                          color: Colors.red[900]!,
                          start: 39.9,
                          end: 47.9,
                          label: 'Obesidade Grave'),
                    ],
                    pointers: const [
                      NeedlePointer(
                        value: 15,
                        enableAnimation: true,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Peso',
                  hintText: 'Informe o peso',
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Altura',
                  hintText: 'Informe a altura',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Calcular'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
