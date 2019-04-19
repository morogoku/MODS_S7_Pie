.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;
.super Ljava/lang/Object;
.source "SuggestedAppList.java"


# instance fields
.field private mSuggestedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->makeSuggestList()V

    return-void
.end method

.method private makeSuggestList()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;

    const-string v2, "com.samsung.android.messaging"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;

    const-string v2, "com.verizon.messaging.vzmsgs"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;

    const-string v2, "com.kakao.talk"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;

    const-string v2, "jp.naver.line.android"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;

    const-string v2, "com.sds.mysinglesquare"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;

    const-string v2, "com.samsung.knox.message"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;

    const-string v2, "com.whatsapp"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;

    const-string v2, "com.google.android.talk"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;

    const-string v2, "com.sgiggle.production"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;

    const-string v2, "com.nimbuzz"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;

    const-string v2, "kik.android"

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;

    const-string v2, "com.bsb.hike"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;

    const-string v2, "com.viber.voip"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;

    const-string v2, "com.tencent.mm"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;

    const-string v2, "org.telegram.messenger"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;

    const-string v2, "com.skype.raider"

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getSuggestedList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->mSuggestedApps:Ljava/util/ArrayList;

    return-object v0
.end method
