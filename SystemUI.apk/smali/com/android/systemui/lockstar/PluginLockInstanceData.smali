.class public Lcom/android/systemui/lockstar/PluginLockInstanceData;
.super Ljava/lang/Object;
.source "PluginLockInstanceData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;
    }
.end annotation


# instance fields
.field private VERSION:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field

.field private mData:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData;->VERSION:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public addData(Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public contain(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getData(Ljava/lang/String;)Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    return-object v0
.end method
