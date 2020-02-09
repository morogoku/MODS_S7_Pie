.class public Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;
.super Ljava/lang/Object;
.source "ServiceBoxRemoteViewsItem.java"


# instance fields
.field private final mAdditionalView:Landroid/widget/RemoteViews;

.field private final mBigView:Landroid/widget/RemoteViews;

.field private mDisableChangeToCurrent:Z

.field private final mHasOwnBigPage:Z

.field private final mIsChangeCurrentPage:Z

.field private final mIsEnabled:Z

.field private final mLastUpdatedTime:J

.field private final mPageId:Ljava/lang/String;

.field private final mRealPackageName:Ljava/lang/String;

.field private final mSmallView:Landroid/widget/RemoteViews;

.field private final mSmallViewAOD:Landroid/widget/RemoteViews;

.field public final packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZZLandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mDisableChangeToCurrent:Z

    iput-object p9, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mPageId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mRealPackageName:Ljava/lang/String;

    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p1, p9}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getPkgNameForPageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    :goto_0
    iput-boolean p3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mIsChangeCurrentPage:Z

    iput-boolean p2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mIsEnabled:Z

    iput-object p5, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mSmallViewAOD:Landroid/widget/RemoteViews;

    iput-object p6, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mSmallView:Landroid/widget/RemoteViews;

    iput-object p7, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mBigView:Landroid/widget/RemoteViews;

    iput-boolean p4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mHasOwnBigPage:Z

    iput-object p8, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mAdditionalView:Landroid/widget/RemoteViews;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mLastUpdatedTime:J

    return-void
.end method

.method public static createInstance(Landroid/content/Intent;)Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;
    .locals 20

    move-object/from16 v0, p0

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, "ServiceBoxRemoteViewsItem"

    const-string/jumbo v4, "wrong pkg name"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    const-string/jumbo v2, "show"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    const-string/jumbo v2, "small"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    if-eqz v12, :cond_1

    invoke-static {v13}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isNotRemoteViews(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ServiceBoxRemoteViewsItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wrong small view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    const-string v2, "additional"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-static {v14}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isNotRemoteViews(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ServiceBoxRemoteViewsItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wrong additional view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    const-string v2, "big"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-static {v15}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isNotRemoteViews(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ServiceBoxRemoteViewsItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wrong big view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_3
    const-string/jumbo v2, "smallAOD"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    if-nez v11, :cond_4

    if-eqz v12, :cond_4

    const-string v2, "ServiceBoxRemoteViewsItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no view for AOD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v11, :cond_5

    invoke-static {v11}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isNotRemoteViews(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ServiceBoxRemoteViewsItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wrong small view for AOD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_5
    const-string/jumbo v2, "pageId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "ServiceBoxRemoteViewsItem"

    const-string v3, "no pageId"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v2, 0x0

    if-nez v15, :cond_7

    const-string v3, "hasOwnBigPage"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    :cond_7
    move/from16 v16, v2

    new-instance v17, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    const-string v2, "changeCurrentPage"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    move-object v7, v11

    check-cast v7, Landroid/widget/RemoteViews;

    move-object v8, v13

    check-cast v8, Landroid/widget/RemoteViews;

    move-object v9, v15

    check-cast v9, Landroid/widget/RemoteViews;

    move-object/from16 v18, v14

    check-cast v18, Landroid/widget/RemoteViews;

    move-object/from16 v2, v17

    move-object v3, v1

    move v4, v12

    move/from16 v6, v16

    move-object/from16 v19, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v11

    move-object/from16 v11, v19

    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;-><init>(Ljava/lang/String;ZZZLandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    return-object v17
.end method

.method private static isNotRemoteViews(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public disableChangeToCurrent()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mDisableChangeToCurrent:Z

    return-void
.end method

.method public getAODView(Z)Landroid/widget/RemoteViews;
    .locals 5

    const-string v0, "ServiceBoxRemoteViewsItem"

    const-string v1, "getAODView %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mSmallViewAOD:Landroid/widget/RemoteViews;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mSmallViewAOD:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mSmallView:Landroid/widget/RemoteViews;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mSmallViewAOD:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getAdditionalView()Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mAdditionalView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getLastUpdatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mLastUpdatedTime:J

    return-wide v0
.end method

.method public getView(Z)Landroid/widget/RemoteViews;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mBigView:Landroid/widget/RemoteViews;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mSmallView:Landroid/widget/RemoteViews;

    :goto_0
    return-object v0
.end method

.method public hasBigView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mBigView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOwnBigPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mHasOwnBigPage:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mIsEnabled:Z

    return v0
.end method

.method public isEnabledChangeToCurrent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mDisableChangeToCurrent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mIsChangeCurrentPage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSameBigAndSmall()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mBigView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mSmallView:Landroid/widget/RemoteViews;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ServiceBoxRemoteViewsItem [%s, %s, %s, %s, %s, %s, %s, %s, %s] - %s"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mPageId:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mIsEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mSmallViewAOD:Landroid/widget/RemoteViews;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mSmallView:Landroid/widget/RemoteViews;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mBigView:Landroid/widget/RemoteViews;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mIsChangeCurrentPage:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mDisableChangeToCurrent:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->mHasOwnBigPage:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
