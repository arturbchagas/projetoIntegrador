enum ServiceStatus {
  pending,
  confirmed,
  canceled,
}

class Service {
  String date;
  String time;
  String name;
  String vehicle;
  String brand;
  String model;
  String plate;
  String service;
  ServiceStatus status;

  Service({
    required this.date,
    required this.time,
    required this.name,
    required this.vehicle,
    required this.brand,
    required this.model,
    required this.plate,
    required this.service,
    required this.status,
  });

  String statusDisplay() {
    switch (status) {
      case ServiceStatus.pending:
        return 'Pendente';
      case ServiceStatus.confirmed:
        return 'Confirmado';
      case ServiceStatus.canceled:
        return 'Cancelado';
      default:
        return 'Pendente';
    }
  }
}
