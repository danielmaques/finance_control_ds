import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class FinanceSelectBank extends StatefulWidget {
  const FinanceSelectBank({
    super.key,
    this.selectedItem,
  });

  final String? selectedItem;

  @override
  State<FinanceSelectBank> createState() => _FinanceSelectBankState();
}

class _FinanceSelectBankState extends State<FinanceSelectBank> {
  SearchController searchController = SearchController();
  String? bankSelect;

  List<String> banks = [
    "American Express",
    "Mastercard",
    "Visa",
    "Credicard",
    "Diners",
    "Elo",
    "Nubank",
    "Aura",
    "Inter",
    "Banco do Brasil",
    "Bradesco",
    "Caixa",
    "Hipercard",
    "Itaú",
    "Neon",
    "Next",
    "Nuconta",
    "Santander",
    "Agibank",
    "Amazonia",
    "Ame Digital",
    "BMG",
    "BRB",
    "BRDE",
    "BS2",
    "BTG Pactual",
    "Cacique",
    "PAN",
    "Votorantim",
    "Banco do Nordeste",
    "Banese",
    "Banestes",
    "Banif",
    "Banpara",
    "Banrisul",
    "Bbm",
    "Cetelem",
    "Citibank",
    "Clear",
    "Cruzeirodosul",
    "Daycoval",
    "Digi+",
    "Digio",
    "Diin",
    "Nuinvest",
    "Elliot",
    "Fortbrasil",
    "Genial Investimentos",
    "HSBC",
    "IQ Option",
    "Iti",
    "Magnetis",
    "Mais!",
    "Mercadopago",
    "ModalMais",
    "Moip",
    "Monetus",
    "N26",
    "Nova Futura",
    "Original",
    "Pag!",
    "PagBank",
    "Pagseguro",
    "PayU Brasil",
    "Paypal",
    "PicPay",
    "Recargapay",
    "Rico",
    "Safra",
    "Sicoob",
    "Sicredi",
    "Sodexo",
    "Sofisa direto",
    "Submarino",
    "Toro Investimentos",
    "Unicred",
    "Uniprime",
    "Urbe.Me",
    "Viacredi",
    "ABN AMRO",
    "AGBank",
    "AKBank",
    "AMP Personal Banking",
    "ANZ",
    "ASN",
    "Absolut Bank",
    "Agribank",
    "Aktia",
    "Alfa",
    "Alpha",
    "Americanas",
    "Ameriprise Financial",
    "Attica",
    "BBVA",
    "BCA",
    "BIDV",
    "BMO",
    "BNI",
    "BNL",
    "BNP Paribas",
    "BOQ",
    "BPER Banca",
    "BPI",
    "BRI",
    "Banamex",
    "Banca Carige",
    "Banca DItalia",
    "Banca MPS",
    "Banca Mediolanum",
    "Banca Populare di Sondrio",
    "BPM",
    "Banco de Bogotá",
    "Banco de Occident",
    "Banco del Bajio",
    "Posta",
    "lombia",
    "Bangkok Bank",
    "Bank Norwegian",
    "Bank Rakyat",
    "Bank of Aland",
    "Bank of America",
    "Bank of China",
    "Bankia",
    "Bankwest",
    "Banorte",
    "Barclays",
    "Ben Visa Vale",
    "Bendigo",
    "C6 Bank",
    "CDB",
    "CDP",
    "CIBC",
    "CIMB Bank",
    "CIMB Niaga",
    "CTT",
    "Caisse dEpargne",
    "Caixa Geral",
    "CaixaBank",
    "Capital One",
    "Carteira",
    "Cassa Depositi e Prestiti",
    "Charles Schwab",
    "China Construction",
    "CommBank",
    "Commerzbank",
    "Credit Bank of Moscow",
    "Credit agricole",
    "Credito Emiliano",
    "Crédit Agricole",
    "Crédit du Nord",
    "DNB",
    "DZ Bank",
    "Danske",
    "Davivienda",
    "Default",
    "Deutsche Bank",
    "Eurobank",
    "Evli",
    "Forex",
    "Galicia",
    "Garanti",
    "Gazprombank",
    "Goldman Sachs",
    "Handelsbanken",
    "Hipotecario",
    "Hong Leong",
    "HypoVereinsbank",
    "ICBC",
    "ICCREA Banca",
    "ING",
    "Inbursa",
    "Intesa Sanpaolo",
    "Isbank",
    "JP",
    "JP Morgan Chase",
    "Jyske",
    "KB Kookmin",
    "KBank",
    "KDB",
    "KEB Hana",
    "KFW",
    "Krung Thai Bank",
    "Lloyds Banking Group",
    "MUFG",
    "Macquarie",
    "Macro",
    "Mandiri",
    "Maybank",
    "MedioBanca",
    "Millenium BCP",
    "Mizuho",
    "Morgan Stanley",
    "NAB",
    "NH",
    "Nación",
    "National Bank of Greece",
    "Nochu",
    "Nordea",
    "Nordnet",
    "Novo Banco",
    "Nykredit",
    "OP",
    "Otkritie",
    "PNC Financial Services",
    "Patagonia",
    "Piraeus",
    "Porto Seguro",
    "Promsvyazbank",
    "Public Bank",
    "RBC Royal",
    "RBS",
    "RHB",
    "Rabobank",
    "Raiffeisen Bank",
    "Revolut",
    "SCB",
    "SEB",
    "SMBC",
    "SMP Bank",
    "SNS",
    "Sabadell",
    "Santander Espanha",
    "Santander México",
    "Sberbank",
    "Scotiabank",
    "Senff",
    "Shinhan",
    "Société Générale",
    "Sparebank 1 SMN",
    "Standard Chartered",
    "Storebrand",
    "Suncorp",
    "Superdigital",
    "Swedbank",
    "SydBank",
    "TD Bank",
    "TMB Bank",
    "Techcombank",
    "Tesouro Direto",
    "Tesouro Nacional",
    "Ticket",
    "Tinkoff",
    "TransferWise",
    "Trigg",
    "UBI Banca",
    "US Bank",
    "Unicredit Bank",
    "Unipol Banca",
    "UrPay",
    "VTB",
    "Vietcombank",
    "VietinBank",
    "Warren",
    "Wells Fargo",
    "Westpac",
    "Woop",
    "Xdex",
    "Xp Investimentos",
    "Yapi Kredi Bank",
    "Ziraat",
    "alelo",
    "bunq",
    "Órama",
    "Flash",
    "Cora",
    "Will",
    "UTIL",
    "Caju",
    "Outros"
  ];

  @override
  void initState() {
    super.initState();
    bankSelect = widget.selectedItem;
  }

  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      builder: (BuildContext context, SearchController controller) {
        return SearchBar(
          shape: MaterialStateProperty.all(const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          )),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(1),
          controller: controller,
          hintText: bankSelect ?? "Selecione seu banco",
          padding: const MaterialStatePropertyAll<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 16.0),
          ),
          onTap: () {
            controller.openView();
          },
          onChanged: (_) {
            controller.openView();
          },
          leading: const Icon(Icons.account_balance_outlined),
        );
      },
      suggestionsBuilder: (BuildContext context, SearchController controller) {
        final searchText = controller.text;

        final filteredBanks = banks.where((bank) {
          return bank.toLowerCase().contains(searchText.toLowerCase());
        }).toList();

        return filteredBanks.map<Widget>(
          (bank) {
            return ListTile(
              title: FinanceText.p18(bank),
              onTap: () {
                setState(() {
                  bankSelect = bank;
                });
                searchController.text = bank;
                controller.closeView(bankSelect);
              },
            );
          },
        );
      },
    );
  }
}