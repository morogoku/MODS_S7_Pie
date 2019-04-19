.class Lcom/android/server/AlarmManagerServiceExt$PackageList;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageList"
.end annotation


# instance fields
.field mPackageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRegExpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_1d
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2e
    :goto_2e
    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 6

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p1, :cond_28

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    goto :goto_12

    :cond_29
    :goto_29
    return v0
.end method

.method public loadAppSync3PlusBlackList()V
    .registers 2

    const-string v0, ".*reminder.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*alert.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.sec.screencheck"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.sec.dsm.system"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.fmm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.ssd.wolfserver"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "ch.bitspin.timely"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.nhn.android.nmap"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.qihoo.security"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*vodafone.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*vzw.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*verizon.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->VZW:Z

    if-eqz v0, :cond_ae

    const-string v0, ".*amazon.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.audible.application"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.imdb.mobile"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.amazon.fv"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.gotv.nflgamecenter.us.lite"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.slacker.radio"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.telecomsys.directedsms.android.SCG"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.LogiaGroup.LogiaDeck"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.vznavigator.Generic"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.cequint.ecid"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.vcast.mediamanager"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.cmas"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.spg"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.setupwizard"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.vvm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.carrier.logcollector"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.sdm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.syncmlservice"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.syncmlphonedataservice"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.sdm.sdmviewer"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.PAYGPrePayDetection"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.fusionone.android.sync.vzbuaclient"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    :cond_ae
    const-string v0, ".*att.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*mizmowireless.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->ATT:Z

    if-eqz v0, :cond_c6

    const-string v0, "com.welldoc.diabetesmanager"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "deezer.android.app"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    :cond_c6
    const-string v0, ".*sprint.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->SPR:Z

    if-eqz v0, :cond_17a

    const-string v0, "com.airg"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.amazon.mShop"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.amazon.mShop.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.amazon.avod.thirdpartyclient"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.amazon.mp3"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.amazon.clouddrive.photos"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.boostmobile.boosttv"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.coremobility.app.vnotes"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.ebay.mobile"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.familyandco.framilywall"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.handmark.expressweather"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.itsoninc.android.itsonclient"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.itsoninc.android.itsonservice"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.itsoninc.android.uid"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.kineto.smartwifi"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.livewiremobile.musicstore.boost"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.locationlabs.sparkle.yellow.pre"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.lookout"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.nascar.nascarmobile"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.nbadigital.gametimelite"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.nextradioapp.nextradio"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.oem.smartwifisupport"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.pinsight.v1"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.smithmicro.EDM"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.smithmicro.mnd"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.soleo.numbersearch"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.spotify.music"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.telenav.app.android.scout_us"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.ubercab"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.wipit.android.boostwallet"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo v0, "msgplus.jibe.sca"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.privacystar.android.spg"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.playphone.gamestore"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.livewiremobile.musicstore.vmu"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    :cond_17a
    const-string v0, ".*tmobile.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->TMO:Z

    if-eqz v0, :cond_192

    const-string v0, "com.amazon.mShop.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.lookout"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.customermobile.preload"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    :cond_192
    const-string v0, ".*metro.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->MPCS:Z

    if-eqz v0, :cond_1af

    const-string v0, "com.tmobile.pr.adapt"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.lookout"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.mobileposse.client"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.sec.tetheringprovision"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    :cond_1af
    const-string v0, ".*tracfone.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*uscc.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->USCC:Z

    if-eqz v0, :cond_1db

    const-string v0, "com.cequint.ecid"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.synchronoss.sm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.amazon.mShop.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.LogiaGroup.LogiaDeck"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.zed.TrdWapLauncher"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.amazon.windowshop"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    :cond_1db
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->JAPAN:Z

    if-eqz v0, :cond_22c

    const-string v0, "com.nttdocomo.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo v0, "jp.co.nttdocomo.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.ipg.gguide.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.rsupport.rs.activity.ntt"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.mcafee.vsm_android_dcm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.mcafee.safecall.docomo"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.mcafee.android.scanservice"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.showcasegig.devlawson"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo v0, "jp.id_credit_sp.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo v0, "jp.dmapnavi.navi02"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo v0, "jp.co.mcdonalds.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo v0, "jp.co.lawson.activity"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo v0, "jp.co.omronsoft.android.decoemojimanager_docomo"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo v0, "org.simalliance.openmobileapi.service"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    :cond_22c
    return-void
.end method

.method public loadAppSyncBlackList()V
    .registers 2

    const-string v0, ".*alarm.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*clock.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.sec\\..*ims.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.sec.epdg"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung\\..*ims.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.iloen.melon"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.iloen.melon.tablet"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*knox.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*email.ui"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*shealth.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->JAPAN:Z

    if-eqz v0, :cond_45

    const-string v0, "com.android.incallui"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.android.services.telephony.common"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    :cond_45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_2c
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
