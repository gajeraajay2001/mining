import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mining/constants/color_constant.dart';
import 'package:mining/constants/moduleConstant.dart';
import 'package:mining/constants/sizeConstant.dart';
import 'package:mining/utilities/widget_utils.dart';

import '../controllers/btc_full_mode_controller.dart';

class BtcFullModeView extends GetView<BtcFullModeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MySize.safeHeight,
          width: MySize.safeWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              getAppBar(ModuleConstant.MODULE_TYPE_BTC_FULL_MODE),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MySize.getScaledSizeWidth(15),
                      vertical: MySize.size10!),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        megaTitle("What is A Full Node?"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                            "A full node is a program that fully validates transactions and blocks. Almost all full nodes also help the network by accepting transactions and blocks from other full nodes, validating those transactions and blocks, and then relaying them to further full nodes. Most full nodes also serve lightweight clients by allowing them to transmit their transactions to the network and by notifying them when a transaction affects their wallet. If not enough nodes perform this function, clients won't be able to connect through the peer-to-peer network-they'll have to use centralized services instead. Many people and organizations volunteer to run full nodes using spare computing and bandwidth resources-but more volunteers are needed to allow BTC to continue to grow. This document describes how you can help and what helping will cost you."),
                        SizedBox(
                          height: MySize.size30,
                        ),
                        megaTitle("Setup a Full Node"),
                        SizedBox(
                          height: MySize.size30,
                        ),
                        megaTitle("Costs And Warnings"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getBannerAd(),
                        textData(
                            "Running a BTC full node comes with certain costs and can expose you to certain risks. This section will explain those costs and risks so you can decide whether you're able to help the network."),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        title("Special Cases"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "Miners, businesses, and privacy-conscious users rely on particular behavior from the full nodes they use, so they will often run their own full nodes and take special safety precautions. This document does not cover those precautions -it only describes running a full node to help support the BTC network in general. Please seek out assistance in the community if you need help setting up your full node correctly to handle high-value and privacy-sensitive tasks. Do your own diligence to ensure who you get help from is ethical, reputable and qualified to assist you.",
                        ),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        title("Secure Your Wallet"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                            "It's possible and safe to run a full node to support the network and use its wallet to store your BTCs, but you must take the same precautions you would when using any BTC wallet. Please see the securing your wallet page for more information."),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        title("Minimum Requirements"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "BTC Core full nodes have certain requirements. If you try running a node on weak hardware, it may work-but you'll likely spend more time dealing with issues. If you can meet the following requirements, you'll have an easy-to-use node.",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "• Desktop or laptop hardware running recent versions of Windows, Mac OS X, or Linux.10. 350 gigabytes of free disk space, accessible at a minimum read/write speed of 100 MB/s.10. 2 gigabytes of memory (RAM) 10. A broadband Internet connection with upload speeds of at least 400 kilobits (50 kilobytes) per second10 • An unmetered connection, a connection with high upload limits, or a connection you regularly monitor to ensure it doesn't exceed its upload limits. It's common for full nodes on high-speed connections to use 200 gigabytes upload or more a month. Download usage is around 20 gigabytes a month, plus around an additional 340 gigabytes the first time you start your node.10. 6 hours a day that your full node can be left running. (You can do other things with your computer while running a full node.) More hours would be better, and best of all would be if you can run your node continuously.",
                        ),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        title("Note:"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "many operating systems today (Windows, Mac, and Linux) enter a low-power mode after the screensaver activates, slowing or halting network traffic. This is often the default setting on laptops and on all Mac OS X laptops and desktops. Check your screensaver settings and disable automatic 'sleep' or 'suspend' options to ensure you support the network whenever your computer is running.",
                        ),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        getBannerAd(),
                        title("Possible Problems"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        title("● Legal:"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                            "BTC use is prohibited or restricted in some areas."),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        title("● Bandwidth limits:"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getBannerAd(),
                        textData(
                          "Some Internet plans will charge an additional amount for any excess upload bandwidth used that isn't included in the plan. Worse, some providers may terminate your connection without warning because of overuse. We advise that you check whether your Internet connection is subjected to such limitations and monitor your bandwidth use so that you can stop BTC Core before you reach your upload limit.",
                        ),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        title("● Anti-virus:"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "Several people have placed parts of known computer viruses in the BTC block chain. This block chain data can't infect your computer, but some anti-virus programs quarantine the data anyway, making it more difficult to run BTC Core. This problem mostly affects computers running Windows.",
                        ),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        title("● Attack target:"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getBannerAd(),
                        textData(
                          "BTC Core powers the BTC peer-to-peer network, so people who want to disrupt the network may attack BTC Core users in ways that will affect other things you do with your computer, such as an attack that limits your available download bandwidth.",
                        ),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        megaTitle(
                          "Initial Block Download(IBD)",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "Initial block download refers to the process where nodes synchronize themselves to the network by downloading blocks that are new to them. This will happen when a node is far behind the tip of the best block chain. In the process of IBD, a node does not accept incoming transactions nor request mempool transactions.10 If you are trying to set up a new node following the instructions below, you will go through the IBD process at the first run, and it may take a considerable amount of time since a new node has to download the entire block chain (which is roughly 340 gigabytes now). During the download, there could be a high usage for the network and CPU (since the node has to verify the blocks downloaded), and the client will take up an increasing amount of storage space (reduce storage provides more details on reducing storage).10 Before the node finishes IBD, you will not be able to see a new transaction related to your account until the client has caught up to the block containing that transaction. So your wallet may not count new payments/spendings into the balance. If you are using BTC Core GUI, you can monitor the progress of IBD in the status bar (left bottom corner).",
                        ),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        megaTitle(
                          "Linux Instructions",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "The following instructions describe installing BTC Core using tools available in most mainstream Linux distributions. We assume you use a Bourne-like shell such as bash.10 Using any computer, go to the BTC Core download page and verify you have made a secure connection to the server. In the 'Linux (tgz)' section of the Download page, choose the appropriate file for your Linux install (either 32-bit or 64-bit) and download the file. If necessary, move the file to the computer you want to use to run BTC Core. 10 Optional: Verify the release signatures 10 If you know how to use PGP, you should also click the Verify Release Signatures link on the download page to download a signed list of SHA256 file hashes. The 0.11 and later releases are signed by Wladimir J. van der Laan's releases key with the fingerprint:",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getBannerAd(),
                        getContainer(
                            "01EA 5486 DE18 A882 D4C2 6845 9008 019E 36C2 E964"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                            "Earlier releases were signed by Wladimir J. van der Laan's regular key. That key's fingerprint is:"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getContainer(
                            "71A3 B167 3540 5025 D447 E8F2 7481 OB01 2346 C9A6"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "Even earlier releases were signed by Gavin Andresen's key. His primary key's fingerprint is:",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getContainer(
                            "2664 6099 CBAE 0908 1982 EF60 2909 EE6B FC7 30C1"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "You should verify these keys belong to their owners using the web of trust or other trustworthy means. Then use PGP to verify the signature on the release signatures file. Finally, use PGP or another utility to compute the SHA256 hash of the archive you downloaded, and ensure the computed hash matches the hash listed in the verified release signatures file. 10 If you aren't already logged into the computer you want to install BTC on, login now. Make sure you use an account that can use su or sudo to install software into directories owned by the root user. 10 If you logged in graphically, start a terminal. If you logged in another way, we will assume you're already in a shell. 10 Locate the file you downloaded and extract it using the tar command followed by the argument xzf followed by the file name. The argument xzf means extract the gZipped tar archive File. For example, for a 64-bit tar archive in your current directory, the command is:",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getContainer(
                          "tarixzf BTC-0.21.0-x86_64-linux-qnu.tar.gz",
                        ),
                        getBannerAd(),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "This will create the directory BTC-0.21.0 within your current working directory. We will install the contents of its bin subdirectory into the /usr/ local/bin directory using the the install command. The install command is part of the GNU coreutils available on nearly every Linux distribution, and the /usr/local/bin directory is a standard location for self-installed executables (you may edit the commands below to use a different location). 10 If you use sudo to run commands as root, use the following command line: ",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getContainer(
                          "sudo install im 0755-oroot-groot-1/usr/local/bin/BTC-0.21.0/bin/",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                            "If you use su to run commands as root, use the following command line:"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getBannerAd(),
                        getContainer(
                          "su -c 'install -m 0755-oroot-groot-t/usr/local/bin\nBTC-0.21.0/bin/*",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                            "To continue, choose one of the following options10 1.To use BTC Core Graphical User Interface (GUI), proceed to the BTC Core GUI section below. 10 2. To use the BTC Core daemon (BTCD), which is useful for programmers and advanced users, proceed to the BTC Core Daemon section below.10 3. To use both the GUI and the daemon, read both the GUI instructions and the daemon instructions. Note that you can't run both the GUI and the daemon at the same time using the same configuration directory."),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        title("BTC Core GUI"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "In order to use BTC Core GUI, you will need several libraries installed. All of them should be available in all major recently-released Linux distributions, but they may not be installed on your computer yet. To determine whether you're missing any libraries, open a terminal (if you haven't already) and run the command /usr/local/bin/BTC-qt to start BTC Core GUI.10 If all the required libraries are installed, BTC Core will start. If a required library is missing, an error message similar to the following message will be displayed:",
                        ),
                        getBannerAd(),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getContainer(
                          "/usr/local/bin/BTC-qt: error while loading shared\nlibraries:libQtGul.so 4: cannot open shared object\nfile No such file or directory",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "Search your distribution's package database for the missing file missing and install package containing that file. Then re-run /usr/local/bin/ BTC-qt to see if it's missing another file. Repeat until BTC Core GUI starts. 10 You will be prompted to choose a directory to store the BTC block chain and your wallet. Unless you have a separate partition or drive you want to use, click Ok to use the default.",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                            "After download is complete, you may use BTC Core as your wallet or you can just let it run to help support the BTC network. 10 Optional: Start Your Node At Login10 Starting your node automatically each time you login to your computer makes it easy for you to contribute to the network. The easiest way to do this is to tell BTC Core GUI to start at login. This only works in desktop environments that support the autostart specification, such as Gnome, KDE, and Unity.10 While running BTC Core GUI, open the Settings menu and choose Options. On the Main tab, click Start BTC on system login. Click the Ok button to save the new settings."),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "The next time you login to your desktop, BTC Core GUI should be automatically started as an icon in the tray.",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getBannerAd(),
                        textData(
                          "If BTC Core GUI does not automatically start, you may need to add it to an .xinit or .xsession file as described here. 10 You have now completed installing BTC Core. If you have any questions, please ask in one of BTC's many communities, such as BTC StackExchange, BTCTalk technical support, or the #BTC IRC chatroom on Freenode.10 To support the BTC network, you also need to allow incoming connections. Please read the Network Configuration section for details.",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        title("BTC Core Daemon"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                            "If you're logged in as an administrative user with sudo access, you may log out. The steps in this section should be performed as the user you want to run BTC Core. (This can be a locked account used only by BTC Core.) If you changed users in a graphical interface, start a terminal.10 Type the following command:"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getContainer("BTCd-daemon"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                            "It will print a message that BTC Core is starting. To interact with BTC Core daemon, you will use the command BTC-cli (BTC command line interface).10 Note: it may take up to several minutes for BTC Core to start, during which it will display the following message whenever you use BTC-cli:"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getBannerAd(),
                        getContainer(
                            "error (code -28 message Verifying blocks...)"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                            "After it starts, you may find the following commands useful for basic interaction with your node: getblockchaininfo, getnetworkinfo, getnettotals, getwalletinfo, stop, and help.10 For example, to safely stop your node, run the following command:"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getContainer("BTC-cli stop"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                            "A complete list of commands is available in the BTC.org developer reference. 10 When BTC Core daemon first starts, it will begin to download the block chain. This step will take at least several days, and it may take much more time on a slow Internet connection or with a slow computer. During the download, BTC Core will use a significant part of your connection bandwidth. You can stop BTC Core at any time using the stop command; it will resume from the point where it stopped the next time you start it. 10 Optional: Start Your Node At Boot10 Starting your node automatically each time your computer boots makes it easy for you to contribute to the network. The easiest way to do this is to start BTC Core daemon from your crontab. To edit your crontab on most distributions, run the following command:"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getBannerAd(),
                        getContainer("crontab-e"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                            "Scroll to the bottom of the file displayed and add the following line:"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getContainer("reboot BTCd-daemon"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                            "Save the file and exit; the updated crontab file will be installed for you. On most distributions, this will cause BTC Core daemon to be automatically started each time you reboot your computer. 10 If you're a expert system administrator and want to use an init script instead, see the init scripts directory in BTC Core's source tree. 10 You have now completed installing BTC Core. If you have any questions, please ask in one of BTC's many communities, such as BTC StackExchange, BTCTalk technical support, or the #BTC IRC chatroom on Freenode.10 To support the BTC network, you also need to allow incoming connections. Please read the Network Configuration section for details."),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        megaTitle("Windows Instructions"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        title("Windows 10"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                            "Go to the BTC Core download page and verify you have made a secure connection to the server."),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                            "Click the large blue Download BTC Core button to download the BTC Core installer to your desktop.10 Optional: Verify the release signatures10 If you know how to use PGP, you should also click the Verify Release Signatures link on the download page to download a signed list of SHA256 file hashes. The 0.11 and later releases are signed by Wladimir J. van der Laan's releases key with the fingerprint:"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getContainer(
                            "01EA 5486 DE18 A882 D4C2 6845 90C8 019E\n36C2 E964"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getBannerAd(),
                        textData(
                            "Earlier releases were signed by Wladimir J. van der Laan's regular key. That key's fingerprint is:"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getContainer(
                            "71A3 B167 3540 5025 D447 E8F2 7481 OB01 2346 C9A6"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                            "Even earlier releases were signed by Gavin Andresen's key. His primary key's fingerprint is:"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getContainer(
                            "2664 6D99 CBAE C9B8 1982 EF60 29D9 EE6B 1FC7 30C1"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "You should verify these keys belong to their owners using the web of trust or other trustworthy means. Then use PGP to verify the signature on the release signatures file. Finally, use PGP or another utility to compute the SHA256 hash of the archive you downloaded, and ensure the computed hash matches the hash listed in the verified release signatures file. After downloading the file to your desktop or your Downloads folder (C:Users YOUR USER NAMEDownloads), run it by double-clicking its icon. Windows will ask you to confirm that you want to run it. Click Yes and the BTC installer will start. It's a typical Windows installer, and it will guide you through the decisions you need to make about where to install BTC Core.",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "To continue, choose one of the following options10 1.If you want to use the BTC Core Graphical User Interface (GUI), proceed to the BTC Core GUI section below.10 2.If you want to use the BTC Core daemon (BTCd), which is useful for programmers and advanced users, proceed to the BTC Core Daemon section below.10 3.If you want to use both the GUI and the daemon, read both the GUI instructions and the daemon instructions. Note that you can't run both the GUI and the daemon at the same time using the same configuration directory.",
                        ),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        title("BTC Core GUI"),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        getBannerAd(),
                        textData(
                          "Press the Windows key (Win) and start typing 'BTC'. When the BTC Core icon appears (as shown below), click on it.",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "You will be prompted to choose a directory to store the BTC block chain and your wallet. Unless you have a separate partition or drive you want to use, click Ok to use the default.",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "Your firewall may block BTC Core from making outbound connections. It's safe to allow BTC Core to use all networks. (Note: you will still need to configure inbound connections as described later in the Network Configuration section.)",
                        ),
                        getBannerAd(),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "BTC Core GUI will begin to download the block chain. This step will take at least several days, and it may take much more time on a slow Internet connection or with a slow computer. During the download, BTC Core will use a significant part of your connection bandwidth. You can stop BTC Core at any time by closing it; it will resume from the point where it stopped the next time you start it.",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getBannerAd(),
                        textData(
                          "After download is complete, you may use BTC Core as your wallet or you can just let it run to help support the BTC network. 10 Optional: Start Your Node At Login10 Starting your node automatically each time you login to your computer makes it easy for you to contribute to the network. The easiest way to do this is to tell BTC Core GUI to start at login. 10 While running BTC Core GUI, open the Settings menu and choose Options. On the Main tab, click Start BTC on system login. Click the Ok button to save the new settings.",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "The next time you login to your desktop, BTC Core GUI will be automatically started minimized in the task bar. 10 Warning: to prevent data corruption, do not force shutdown of your computer from the Windows shutdown screen when you have BTC Core running.10 You have now completed installing BTC Core. If you have any questions, please ask in one of BTC's many communities, such as BTC StackExchange, BTCTalk technical support, or the #BTC IRC chatroom on Freenode.10 To support the BTC network, you also need to allow incoming connections. Please read the Network Configuration section for details.",
                        ),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        title("BTC Core Daemon"),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        textData(
                          "To start BTC Core daemon, first open a command window: press the Windows key (Win) and type 'cmd'. Choose the option labeled 'Command Prompt'.",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        textData(
                            "If you installed BTC Core into the default directory,type the following at the command prompt:"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getBannerAd(),
                        getContainer("C:Program FilesBTCdaemon BTCd"),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        textData(
                            "BTC Core daemon should start. To interact with BTC Core daemon, you will use the command BTC-cli (BTC command line interface). If youinstalled BTC Core into the default location, typethe following at the command prompt to see whether it works:"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getContainer(
                            "Program Filles BTCdaemonETC-oll getblockchaininfo"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "Note: it may take up to several minutes for BTC Core to start, during which it will display thefollowing message whenever you use BTC-cli:",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getContainer(
                            "error (code-28.message. Verifying blocks)"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          " After it starts, you may find the following commands useful for basic interaction with your node: getblockchaininfo, getnetworkinfo, getnettotals, getwalletinfo, stop, and help.10=For example, to safely stop your node, run the following command:",
                        ),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        getBannerAd(),
                        getContainer("C Program Filles BTCoa=tionETC-ollistop"),
                        SizedBox(
                          height: MySize.size10,
                        ),
                        textData(
                          "A complete list of commands is available in the BTC.org developer reference.10 When BTC Coredaemon first starts, it will begin to download theblock chain. This step will take at least severaldays, and it may take much more time on a slow Internet connection or with a slow computer.During the download, BTC Core will use asignificant part of your connection bandwidth. You can stop BTC Core at any time using the stop command; it will resume from the point where it stopped the next time you start it.10 Optional: Start Your Node At Boot10 Starting your node automatically each time your computer boots makes it easy for you to contribute to the network.The easiest way to do this is to start BTC Core daemon when you login to your computer.10 Start File Explorer and go to:",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row megaTitle(String text) {
    return Row(
      children: [
        Text(
          text,
          textAlign: TextAlign.start,
          style: TextStyle(
              color: appTheme.primaryTheme,
              fontWeight: FontWeight.w500,
              fontSize: MySize.size16),
        ),
        Expanded(child: Container())
      ],
    );
  }

  Row title(String text) {
    return Row(
      children: [
        Text(
          text,
          textAlign: TextAlign.start,
          style: TextStyle(
              color: appTheme.whiteColor,
              fontWeight: FontWeight.w500,
              fontSize: MySize.size16),
        ),
        Expanded(child: Container())
      ],
    );
  }

  Text textData(String text) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: appTheme.whiteColor,
          fontWeight: FontWeight.normal,
          fontSize: MySize.size15),
    );
  }

  Container getContainer(String text) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: MySize.size2!, horizontal: MySize.getScaledSizeWidth(1)),
      width: double.infinity,
      color: appTheme.textGrayColor,
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: TextStyle(
            color: appTheme.whiteColor,
            fontWeight: FontWeight.normal,
            fontSize: MySize.size15),
      ),
    );
  }
}
