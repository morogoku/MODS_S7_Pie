.class public Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;
.super Ljava/lang/Object;
.source "KnoxCustomManagerWrapper.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private final mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;

    return-void
.end method


# virtual methods
.method public getPowerDialogCustomItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/globalactions/util/PowerItemWrapper;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/custom/PowerItem;

    new-instance v4, Lcom/android/systemui/globalactions/util/PowerItemWrapper;

    invoke-direct {v4, v3}, Lcom/android/systemui/globalactions/util/PowerItemWrapper;-><init>(Lcom/samsung/android/knox/custom/PowerItem;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPowerDialogCustomItemsState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItemsState()Z

    move-result v0

    return v0
.end method

.method public isAllowedShowActions()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerMenuLockedState()Z

    move-result v0

    return v0
.end method
