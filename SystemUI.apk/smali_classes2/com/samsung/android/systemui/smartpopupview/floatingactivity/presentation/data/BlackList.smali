.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;
.super Ljava/lang/Object;
.source "BlackList.java"


# instance fields
.field private mBlackListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->makeBlackList()V

    return-void
.end method

.method private makeBlackList()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    const-string v1, "com.sec.android.gallery3d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    const-string v1, "com.sec.android.app.camera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.isag.issmanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.packageinspector"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.app.dtv.dmb"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    const-string v1, "com.sec.android.app.myfiles"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.multistar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    const-string v1, "com.sec.android.app.popupcalculator"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    const-string v1, "com.sec.android.app.voicenote"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    const-string v1, "com.sec.android.app.sbrowser"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    const-string v1, "com.microsoft.office.excel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    const-string v1, "com.microsoft.office.powerpoint"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    const-string v1, "com.microsoft.office.word"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;->mBlackListData:Ljava/util/ArrayList;

    const-string v1, "com.sec.android.app.fm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
