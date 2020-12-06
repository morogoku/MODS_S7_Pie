.class public Lcom/android/systemui/lockstar/PluginLockInstanceState;
.super Ljava/lang/Object;
.source "PluginLockInstanceState.java"


# instance fields
.field private mAllowedNumber:I

.field private mContext:Landroid/content/Context;

.field private mCr:Landroid/content/ContentResolver;

.field private mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

.field private mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

.field private mMode:I

.field private mPackageName:Ljava/lang/String;

.field private mTimeStamp:J


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    const-string v0, "PluginLockInstanceState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PluginLockInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    iput-object p2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mTimeStamp:J

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getVersion()I

    move-result v0

    const/16 v1, 0x44c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    invoke-direct {p0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->initInstanceData()V

    :cond_0
    const-string v0, "PluginLockInstanceState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initInstanceData()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    const-string v1, "key_plugin_lock_instance_data"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockInstanceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initInstanceData list = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2710

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0xa

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    const-class v6, Lcom/android/systemui/lockstar/PluginLockInstanceData;

    invoke-virtual {v5, v0, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/lockstar/PluginLockInstanceData;

    iget-object v7, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/systemui/lockstar/PluginLockInstanceData;->contain(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-direct {v7}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v6}, Lcom/android/systemui/lockstar/PluginLockInstanceData;->getDataList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v8, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    if-ne v8, v3, :cond_2

    mul-int/lit8 v1, v7, 0xa

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    if-ne v3, v2, :cond_3

    mul-int/lit8 v2, v7, 0xa

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setPackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v6, v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData;->addData(Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;)V

    invoke-direct {p0, v6}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->updateDb(Lcom/android/systemui/lockstar/PluginLockInstanceData;)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData;->getData(Ljava/lang/String;)Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    goto :goto_3

    :cond_5
    :goto_1
    new-instance v5, Lcom/android/systemui/lockstar/PluginLockInstanceData;

    invoke-direct {v5}, Lcom/android/systemui/lockstar/PluginLockInstanceData;-><init>()V

    new-instance v6, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-direct {v6}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget v6, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    if-ne v6, v3, :cond_6

    iput v4, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    goto :goto_2

    :cond_6
    iget v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    if-ne v3, v2, :cond_7

    iput v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setPackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v5, v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData;->addData(Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;)V

    invoke-direct {p0, v5}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->updateDb(Lcom/android/systemui/lockstar/PluginLockInstanceData;)V

    nop

    :cond_8
    :goto_3
    const-string v1, "PluginLockInstanceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initInstanceData setAllowedNumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    invoke-interface {v1, v2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->setAllowedNumber(I)V

    return-void
.end method

.method private updateDb(Lcom/android/systemui/lockstar/PluginLockInstanceData;)V
    .locals 6

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockInstanceState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDb(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    const-string v3, "key_plugin_lock_instance_data"

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getAllowedNumber()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    return v0
.end method

.method public getPluginLockContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPluginLockInstance()Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    return-object v0
.end method

.method public getPluginLockTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mTimeStamp:J

    return-wide v0
.end method

.method public getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isModeDynamic()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setTimeStamp(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mTimeStamp:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mTimeStamp:J

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget-wide v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mTimeStamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setTimeStamp(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->updateDb()V

    :cond_1
    return-void
.end method

.method public updateDb()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    const-string v1, "key_plugin_lock_instance_data"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    new-instance v2, Lcom/android/systemui/lockstar/PluginLockInstanceData;

    invoke-direct {v2}, Lcom/android/systemui/lockstar/PluginLockInstanceData;-><init>()V

    new-instance v3, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-direct {v3}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/16 v3, 0xa

    iput v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/16 v3, 0x2710

    iput v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setPackageName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget v4, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v2, v3}, Lcom/android/systemui/lockstar/PluginLockInstanceData;->addData(Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;)V

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-class v2, Lcom/android/systemui/lockstar/PluginLockInstanceData;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/lockstar/PluginLockInstanceData;

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/systemui/lockstar/PluginLockInstanceData;->getData(Ljava/lang/String;)Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v4}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getNumber()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v4}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setTimeStamp(Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v4}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setRecoverData(Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;)V

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->updateDb(Lcom/android/systemui/lockstar/PluginLockInstanceData;)V

    return-void
.end method
