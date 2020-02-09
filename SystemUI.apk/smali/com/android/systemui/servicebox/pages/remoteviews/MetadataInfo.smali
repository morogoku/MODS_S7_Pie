.class public Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;
.super Ljava/lang/Object;
.source "MetadataInfo.java"


# instance fields
.field private final mDbKey:Ljava/lang/String;

.field private final mIsChangeCurrentPage:Z

.field private final mIsPermissionGranted:Z

.field private final mIsSystemUserOnly:Z

.field private final mMenuInSetting:I

.field private final mPageId:Ljava/lang/String;

.field private final mPkgName:Ljava/lang/String;

.field private final mTitleResId:I

.field private final mUseAdditionalInfo:Z


# direct methods
.method private constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZ)V
    .locals 10

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mPkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mDbKey:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mTitleResId:I

    iput-object p2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mPageId:Ljava/lang/String;

    iput p5, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mMenuInSetting:I

    iput-boolean p6, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mIsChangeCurrentPage:Z

    iput-boolean p7, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mIsPermissionGranted:Z

    iput-boolean p8, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mUseAdditionalInfo:Z

    iput-boolean p9, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mIsSystemUserOnly:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZ)V

    return-void
.end method


# virtual methods
.method public getDbKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mDbKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mPageId:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleResId()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mTitleResId:I

    return v0
.end method

.method public isChangeCurrentPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mIsChangeCurrentPage:Z

    return v0
.end method

.method public isDefaultOnMenuInSetting()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mMenuInSetting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEnabledMenuShowingInSetting()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mMenuInSetting:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mMenuInSetting:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public isLegacy()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mPageId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPermissionGranted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mIsPermissionGranted:Z

    return v0
.end method

.method public isSystemUserOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mIsSystemUserOnly:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "pkg[%s] pageId[%s] key[%s] res[%d] menu[%d] chgCur[%s] granted[%s] addition[%s] systemUserOnly[%s]"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mPkgName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mPageId:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mDbKey:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mTitleResId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mMenuInSetting:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mIsChangeCurrentPage:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mIsPermissionGranted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mUseAdditionalInfo:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mIsSystemUserOnly:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useAdditionalInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->mUseAdditionalInfo:Z

    return v0
.end method
