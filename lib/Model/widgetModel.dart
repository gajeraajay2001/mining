import 'package:mining/constants/moduleConstant.dart';

class BonusGuide {
  int? type;
  int? moduleType;
  String? magaTitle;
  String? data;
  String? buttonName;
  int? ActionType;
  BonusGuide({
    required this.ActionType,
    required this.buttonName,
    required this.data,
    required this.magaTitle,
    required this.moduleType,
    required this.type,
  });
}

class DetailDataModel {
  int? type;
  String? title;
  String? data;
  bool? isImg;
  String? ImgData;
  DetailDataModel({
    required this.data,
    required this.type,
    required this.title,
    this.isImg = false,
    this.ImgData,
  });
}

List<BonusGuide> getListofBonus() {
  List<BonusGuide> list = <BonusGuide>[];
  list.add(
    BonusGuide(
        ActionType: ActionType.ACTION_TYPE_BYC_INDIVIDUAL,
        buttonName: "Read",
        data: "BTCereum mining for individuals.",
        magaTitle: "BTC Individuals",
        moduleType: ModuleConstant.MODULE_TYPE_BYC_INDIVIDUAL,
        type: AdConstant.MODULE_TYPE_CONTANT),
  );
  list.add(
    BonusGuide(
        ActionType: ActionType.ACTION_TYPE_BTC_START,
        buttonName: "Get Start",
        data: "Getting started with BTCereum",
        magaTitle: "BTC Start",
        moduleType: ModuleConstant.MODULE_TYPE_BTC_START,
        type: AdConstant.MODULE_TYPE_CONTANT),
  );
  list.add(
    BonusGuide(
        ActionType: ActionType.ACTION_TYPE_BTC_WORK,
        buttonName: "Next",
        data: "How dose BTCereum mining work?",
        magaTitle: "BTC Work",
        moduleType: ModuleConstant.MODULE_TYPE_BTC_WORK,
        type: AdConstant.MODULE_TYPE_CONTANT),
  );
  list.add(
    BonusGuide(
        ActionType: ActionType.ACTION_TYPE_SUPPORT_BTC,
        buttonName: "Next",
        data: "The only cryptocurrency you can mine is Bitcoin.",
        magaTitle: "Support BTC",
        moduleType: ModuleConstant.MODULE_TYPE_SUPPORT_BTC,
        type: AdConstant.MODULE_TYPE_CONTANT),
  );
  list.add(
    BonusGuide(
        ActionType: ActionType.ACTION_TYPE_BTC_FULL_MODE,
        buttonName: "Next",
        data: "Running a full mode.",
        magaTitle: "BTC Full Mode",
        moduleType: ModuleConstant.MODULE_TYPE_BTC_FULL_MODE,
        type: AdConstant.MODULE_TYPE_CONTANT),
  );
  list.add(
    BonusGuide(
        ActionType: ActionType.ACTION_TYPE_BTC_MINING,
        buttonName: "Watch",
        data: "mining Profitability ,3\$ per day.",
        magaTitle: "BTC Mining",
        moduleType: ModuleConstant.MODULE_TYPE_BTC_MINING,
        type: AdConstant.MODULE_TYPE_CONTANT),
  );
  list.add(
    BonusGuide(
        ActionType: ActionType.ACTION_TYPE_BTC_TERMS,
        buttonName: "Read More",
        data: "Know more to read.",
        magaTitle: "Term & Condition",
        moduleType: ModuleConstant.MODULE_TYPE_BTC_TERMS,
        type: AdConstant.MODULE_TYPE_CONTANT),
  );
  list.add(
    BonusGuide(
        ActionType: ActionType.ACTION_TYPE_BTC_BONUS,
        buttonName: "Next",
        data: "The daily BTC Bonus receive one time per day.",
        magaTitle: "Daily BTC Bonus",
        moduleType: ModuleConstant.MODULE_TYPE_BTC_BONUS,
        type: AdConstant.MODULE_TYPE_CONTANT),
  );
  list.add(
    BonusGuide(
        ActionType: ActionType.ACTION_TYPE_BTC_MINING,
        buttonName: "Boost",
        data: "BTC booster activated after viewing 1h10boost.",
        magaTitle: "Pool Mining",
        moduleType: ModuleConstant.MODULE_TYPE_BTC_MINING,
        type: AdConstant.MODULE_TYPE_CONTANT),
  );
  list.add(
    BonusGuide(
        ActionType: ActionType.ACTION_TYPE_SPEND_BTC,
        buttonName: "Read More",
        data: "Use BTC to pay which services and10merchants accepting BTC.",
        magaTitle: "Spend BTC",
        moduleType: ModuleConstant.MODULE_TYPE_SPEND_BTC,
        type: AdConstant.MODULE_TYPE_CONTANT),
  );
  return list;
}

List<DetailDataModel> getDetailData(int moduleType) {
  List<DetailDataModel> list = <DetailDataModel>[];
  switch (moduleType) {
    case ModuleConstant.MODULE_TYPE_BYC_INDIVIDUAL:
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "BTC when used on a mobile device allows you to pay with a simple two-step scan-and-pay. There's no need to sign up, swipe your card, type a PIN, or sign anything. All you need to receive BTC payments is to display the QR code in your BTC wallet app and let the other party scan your mobile, or touch the two phones together (using NFC radio technology).",
            title: "Mobile payments made easy"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "BTC transactions are secured by mathematics and energy. Cryptographic signatures prevent other people from spending your money. Energy spent by proof of work (PoW) prevents other people from undoing, rearranging or losing your transactions. So long as you take the required steps to protect your wallet, BTC can give you control over your money and a strong level of protection against many types of fraud.",
            title: "Security and control over your money"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            title: "Works everywhere, anytime",
            data:
                "Similarly to email, you don't need to ask recipients you're sending BTC to, to use the same software, wallets or service providers. You just need their BTC address and then you can transact with them anytime. The BTC network is always running and never sleeps, even on weekends and holidays."),
      );
      list.add(DetailDataModel(
          type: DetailDataModelConstant.MAGATITLE,
          title: "Fast international payments",
          data:
              "Sending BTCs across borders is as easy as sending them across the street. There are no banks to make you wait three business days, no extra fees for making an international transfer, and no special limitations on the minimum or maximum amount you can send."));
      list.add(DetailDataModel(
          type: DetailDataModelConstant.MAGATITLE,
          title: "Choose your own fees",
          data:
              "There is no fee to receive BTCs, and many wallets let you control how large a fee to pay when spending. Most wallets have reasonable default fees, and higher fees can encourage faster confirmation of your transactions. Fees are unrelated to the amount transferred, so it's possible to send 100,000 BTCs for the same fee it costs to send 1 BTC."));
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            title: "Protect your identity",
            data:
                "With BTC, there's no credit card number that malicious actors can collect in order to steal from you. In fact, it's even possible in some cases to send a payment without revealing your identity, almost like with physical money. You should, however, take note that some effort can be required to protect your privacy."),
      );
      break;
    case ModuleConstant.MODULE_TYPE_BTC_WORK:
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "As a new user, you can get started with BTC without understanding the technical details. Once you've installed a BTC wallet on your computer or mobile phone, it will generate your first BTC address and you can create more whenever you need one. You can disclose your addresses to your friends so that they can pay you or vice versa. In fact, this is pretty similar to how email works, except that BTC addresses should be used only once.",
            title: "The basics for a new user"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "The block chain is a shared public ledger on which the entire BTC network relies. All confirmed transactions are included in the block chain. It allows BTC wallets to calculate their spendable balance so that new transactions can be verified thereby ensuring they're actually owned by the spender. The integrity and the chronological order of the block chain are enforced with cryptography.",
            title: "Balances - block chain"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "A transaction is a transfer of value between BTC wallets that gets included in the block chain. BTC wallets keep a secret piece of data called a private key or seed, which is used to sign transactions, providing a mathematical proof that they have come from the owner of the wallet. The signature also prevents the transaction from being altered by anybody once it has been issued. All transactions are broadcast to the network and usually begin to be confirmed within 10-20 minutes, through a process called mining.",
            title: "Transactions - private keys"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "Mining is a distributed consensus system that is used to confirm pending transactions by including them in the block chain. It enforces a chronological order in the block chain, protects the neutrality of the network, and allows different computers to agree on the state of the system. To be confirmed, transactions must be packed in a block that fits very strict cryptographic rules that will be verified by the network. These rules prevent previous blocks from being modified because doing so would invalidate all the subsequent blocks. Mining also creates the equivalent of a competitive lottery that prevents any individual from easily adding new blocks consecutively to the block chain. In this way, no group or individuals can control what is included in the block chain or replace parts of the block chain to roll back their own spends.",
            title: "Processing - mining"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "This is just a short summary of BTC. If you want to learn more of the details, you can read the original paper that describes its design, the developer documentation, or explore the BTC wiki.",
            title: "Going down the rabbit hole"),
      );
      break;
    case ModuleConstant.MODULE_TYPE_SUPPORT_BTC:
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "Using BTC is the first thing you can do to support BTC. There are probably many cases where it can make your life easier. You can accept payments and make purchases with BTC.",
            title: "Using BTC"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "If you have a good Internet connection, you can strengthen the BTC network by keeping full node software running on your computer or server with port 8333 open. Full nodes are securing and relaying all transactions.",
            title: "Be the network"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "You can start mining BTCs to help processing transactions. In order to protect the network, you should join smaller mining pools and prefer decentralized pools like P2Pool or pools with getblocktemplate (GBT) support.",
            title: "Mining"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "You can help spread BTC awareness by translating or improving translations inside important parts of the BTC ecosystem. Just pick a project you would like to help with. BTC Core - BTC.org - BTC Wiki - BTC Wallet (Android) - Electrum",
            title: "Translate"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "BTC is free software. If you are a developer, you can use your superpowers to do good and improve BTC. Or you can build amazing new services or software that use BTC.",
            title: "Development"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "The easiest way to help is to donate some BTC to BitGive. Or you can help directly fund any project related to BTC that you believe will be helpful in the future.",
            title: "Donation"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "Many non-profit organizations are dedicated to protecting and promoting BTC. You can help these groups by joining them and taking part in their projects, discussions and events.",
            title: "Organizations"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "Speak about BTC to interested people. Write about it on your blog. Tell your favorite shops you would like to pay with BTC. Help to keep merchant directories up to date. Or be creative and make yourself a nice BTC T-shirt.",
            title: "Spread"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "BTC.org and the BTC wiki provide useful documentation and we are constantly improving the information they contain. You can help to improve these resources and keep them up to date.",
            title: "Documentation"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "You can join BTC communities and talk with other BTC enthusiasts. You can learn more about BTC every day, give help to new users and get involved in interesting projects.",
            title: "Meet the communities"),
      );

      break;
    case ModuleConstant.MODULE_TYPE_BTC_MINING:
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.TITLE,
            data:
                "Cloud Mining is the process of mining concurrency utilizing a remote datacenter with shared processing power. This type of cloud mining enables users to mine bitcoins or altcoins without managing the hardware. BTC cloud mining involves the outsourcing of hardware maintenance and management responsibilities to a third-party service provider. It can in some cases involve a process of renting hash power with the sole aim of mining BTC. BTC mining is fundamentally similar to bitcoin mining. Both use proof of work (POW). PoW is a competitive activity that miners undertake to write transactions to a new block that will be added to the blockchain. A miner successfully mines a new block while competing with fellow miners by running a hashing script. The developers behind the BTC blockchain are working on shifting the mining algorithm from Proof of Work to Proof of Stake (POS). Pos allows for the creation of new blocks with the expensive process of PoW mining. Slowly but steadily, cryptocurrencies - particularly the two largest - appear to be acquiring these properties. Here's a look at some of the different doorways into the crypto economy. Before we go any further I just want to reiterate that investing in cryptocoins or tokens is highly speculative and the market is largely unregulated. Anyone considering it should be prepared to lose their entire investment.\n\nA third method is through peer-to-peer cryptocurrency lending. Platforms such as BTCPop and Bitbond match lenders with borrowers who are willing to make repayments with interest. As with peer-to-peer trading, reputation and feedback systems help lenders make educated assessments of the risk of each particular loan, and borrowers can generally 'earn' the opportunity to take out future loans at lower interest rates by showing that they will make repayments on time.",
            title: "What is BTC Cloud Mining?"),
      );
      break;
    case ModuleConstant.MODULE_TYPE_BTC_TERMS:
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.TITLE,
            data:
                "Just how profitable is it to mine BTC? To properly answer this question, let's start at the beginning: Let's construct a hypothetical mining rig, plug in some reasonable numbers, and come up with a pragmatic analysis of how much you can earn through BTC mining. Let's also hold the price of BTC static. By removing any profitability from the appreciation of BTC from the equation, we'll be able to correlate the actual rates of return exclusively with hardware, electricity, and any other costs associated with running a mining rig.\n\nAs you can see here, our hypothetical mining rig is more efficient and profitable than some of the best mining equipment on the market right now. We are assuming four GPUs that mine 40 MH/ s each. The hardware specs are four GPUs, plus a processor, a motherboard, and a power supply rated at 1,000 Watts of electricity. The cost of this rig would be approximately \$3,000. This one isn't difficult! There are plenty of places out there offering to sell cryptocurrencies, particularly Bitcoin, in exchange for hard-earned fiat (government-issued) currency. Exchanges, such as Coinbase, Bitfinex and Binance offer Bitcoin, BTC and hundreds of other lesser-known cryptocurrencies. They vary a great deal in complexity and the technical expertise needed to operate, with Coinbase often being seen as the simplest and most straightforward for beginners. Be warned though this does come at a price, as you pay for this with slightly higher fees. The more sophisticated exchanges allow trading of Bitcoin, BTC or any other supported coin, just as if it was a regular currency. That is, trading is based on currency pairs, and markets operate 24/7. All these options and technical finance tools often make them seem complicated to newcomers, particularly those who want to buy cryptocurrencies for their utility rather than as investments.",
            title: "What is Cost of mining?"),
      );
      break;
    case ModuleConstant.MODULE_TYPE_BTC_BONUS:
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.TITLE,
            data:
                "What is BONUS? In order to encourage users to promote the Pivot community, We decided to organize a campaign called Daily BTC Bonus for 7 days. The bonus is FOUR BTC per day. What is POWER. In principle, a performance bonus can be paid to all employees, regardless of their post or their funding source. The payment of a performance bonus can also be used as part of the salary system, in addition to the annual assessment of the level of performance.\n\nHow to get POWER? 1) Read a post For every post that you read, you will be rewarded with 100 POWER. The maximum reward is 2000 POWER per day! 2) Invite a friend For every friend that you invite to create a Pivot account, you will be rewarded with 10000 POWER. Besides, the more posts share, the moew friens you likely to invite to Pivot. In principle, a performance bonus can be paid to all employees, regardless of their post or their funding source. The payment of a performance bonus can also be used as part of the salary system, in addition to the annual assessment of the level of performance.",
            title: "Daily BTC Bonus"),
      );
      break;
    case ModuleConstant.MODULE_TYPE_POOL_MINING:
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.TITLE,
            data:
                "A mining pool is a joint group of cryptocurrency miners who combine their computational resources over a network to strengthen the probability of finding a block or otherwise successfully mining for cryptocurrency. Cryptocurrency mining pools are groups of miners who share their computational resources. Mining pools utilize these combined resources to strengthen the probability of finding a block or otherwise successfully mining for cryptocurrency. If the mining pool is successful and receives a reward, that reward is divided among participants in the pool. Individually, participants in a mining pool contribute their processing power toward the effort of finding a block. If the pool is successful in these efforts, they receive a reward, typically in the form of the associated cryptocurrency.\n\nRewards are usually divided between the individuals who contributed, according to the proportion of each individual is processing power or work relative to the whole group. In some cases, individual miners must show proof of work in order to receive their rewards. Anyone who wants to make a profit through cryptocurrency mining has the choice to either go solo with their own dedicated devices or to join a mining pool where multiple miners and their devices combine to enhance their hashing output. For example, attaching six mining devices that each offers 335 megahashes per second (MH/s) can generate a cumulative 2 gigahashes of mining power, thereby leading to faster processing of the hash function. Not all cryptocurrency mining pools function in the same way. There are, however, a number of common protocols that govern many of the most popular mining pools. Proportional mining pools are among the most common. In this type of pool, miners contributing to the pool is processing power receive shares up until the point at which the pool succeeds in finding a block. After that, miners receive rewards proportional to the number of shares they hold.",
            title: "What is Pool mining?"),
      );
      break;
    case ModuleConstant.MODULE_TYPE_SPEND_BTC:
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.TITLE,
            data:
                "Cryptocurrencies like Bitcoin and BTC have mostly become known for their potential to gain (and more recently lose) value very quickly. But if, as their proponents suggest, they are set to become standard units of currency for a digital age, they have to be useful beyond merely acting as vessels for speculative investment. Real life currencies can be spent on goods and services, traded for other currencies, and acquired as payment for work. Slowly but steadily, cryptocurrencies - - particularly the two largest - appear to be acquiring these properties. Here's a look at some of the different doorways into the crypto economy. Before we go any further I just want to reiterate that investing in cryptocoins or tokens is highly speculative and the market is largely unregulated. Anyone considering it should be prepared to lose their entire investment. While it's true that most major retailers are not yet ready to start accepting Bitcoins and BTC, many of them offer gift cards which can be spent online. This has led to services such as Zeek and Gyft - where unwanted gift cards from iTunes, Tesco, Starbucks and many other outlets are traded for Bitcoins. (Zeek is currently available in the UK and Germany).\n\nOther retailers have made the bold move of directly accepting Bitcoins, BTC or other cryptocurrencies. It's also possible to buy a wide range of internet-related services - from website hosting to VPN protection, using cryptocurrencies. Overstock was one of the first and most prominent and offers everything from furniture and jewellery to electronics and video games. If you are in the mood for a holiday, then travel site Expedia lets you book flights and hotels using digital currency. And smaller local businesses are starting to get in on the act too - Bitcoinrestaurants is a directory of (US) eateries where the owners are happy for you to pay for your food and drinks with Bitcoins.",
            title: "Where can I spend ETC?"),
      );
      break;
    case ModuleConstant.MODULE_TYPE_MERCHENT_PRODUCT:
    case ModuleConstant.MODULE_TYPE_SUBMIT_YOUR_BUISSNESST:
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            isImg: true,
            ImgData: "assets/phone.png",
            data:
                "One common use for BTCereum is making purchases online. There are hundreds of online shops and retailers that accept BTCereum. Using a search engine like Spendabit you can search through millions of products, all available for purchase with BTCereums.",
            title: "Find products for sale online"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            ImgData: "assets/world.png",
            isImg: true,
            data:
                "open and free platform to search businesses, organizations or individuals who accept BTCereum and other Cryptocurrency.",
            title: "Global local and online business search"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            ImgData: "assets/book.png",
            isImg: true,
            data:
                "You can also find many businesses listed in online directories.",
            title: "Navigate a business directory"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            ImgData: "assets/house.png",
            isImg: true,
            data:
                "There are also many local businesses, like cafes and restaurants, that accept BTCereum. You can use Coinmap.org to browse thousands of businesses across the globe.",
            title: "Find local businesses"),
      );
      break;
    case ModuleConstant.MODULE_TYPE_INFORM_YOUR_SELF:
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "Like in real life, your wallet must be secured. BTC makes it possible to transfer value anywhere in a very easy way and it allows you to be in control of your money. Such great features also come with great security concerns. At the same time, BTC can provide very high levels of security if used correctly. Always remember that it is your responsibility to adopt good practices in order to protect your money. Read more about securing your wallet.",
            title: "Securing your wallet"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "The price of a BTC can unpredictably increase or decrease over a short period of time due to its young economy, novel nature, and sometimes illiquid markets. Consequently, keeping your savings with BTC is not recommended at this point. BTC should be seen like a high risk asset. and you should never store money that you cannot afford to lose with BTC. If you receive payments with BTC, many service providers can convert them to your local currency.",
            title: "BTC price is volatile"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "A BTC transaction cannot be reversed, it can only be refunded by the person receiving the funds. This means you should take care to do business with people and organizations you know and trust, or who have an established reputation. For their part, businesses need to keep track of the payment requests they are displaying to their customers. BTC can detect typos and usually won't let you send money to an invalid address by mistake, but it's best to have controls in place for additional safety and redundancy. Additional services might exist in the future to provide more choice and protection for both businesses and consumers.",
            title: "BTC payments are irreversible"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "Some effort is required to protect your privacy with BTC. All BTC transactions are stored publicly and permanently on the network, which means anyone can see the balance and transactions of any BTC address. However, the identity of the user behind an address remains unknown until information is revealed during a purchase or in other circumstances. This is one reason why BTC addresses should only be used once. Always remember that it is your responsibility to adopt good practices in order to protect your privacy. Read more about protecting your privacy.",
            title: "BTC is not anonymous"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "Transactions don't start out as irreversible. Instead, they get a confirmation score that indicates how hard it is to reverse them (see table). Each confirmation takes between a few seconds and 90 minutes, with 10 minutes being the average. If the transaction pays too low a fee or is otherwise atypical, getting the first confirmation can take much longer.",
            title: "Unconfirmed transactions aren't secure"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "BTC is an experimental new currency that is in active development. Each improvement makes BTC more appealing but also reveals new challenges as BTC adoption grows. During these growing pains you might encounter increased fees, slower confirmations, or even more severe issues. Be prepared for problems and consult a technical expert before making any major investments, but keep in mind that nobody can predict BTC's future.",
            title: "BTC is still experimental"),
      );
      list.add(
        DetailDataModel(
            type: DetailDataModelConstant.MAGATITLE,
            data:
                "BTC is not an official currency. That said, most jurisdictions still require you to pay income, sales, payroll, and capital gains taxes on anything that has value, including BTCs. It is your responsibility to ensure that you adhere to tax and other legal or regulatory mandates issued by your government and/or local municipalities.",
            title: "Government taxes and regulations"),
      );
      break;
    default:
      break;
  }
  return list;
}
