.class public Lcom/samsung/android/knox/container/BBCConfigurationType;
.super Lcom/samsung/android/knox/container/KnoxConfigurationType;
.source "BBCConfigurationType.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/BBCConfigurationType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BBCConfigurationType"


# instance fields
.field protected mAllowClearAllNotification:Z

.field protected mAllowHomeKey:Z

.field protected mAllowSettingsChanges:Z

.field protected mAllowStatusBarExpansion:Z

.field protected mHideSystemBar:Z

.field protected mWipeRecentTasks:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/container/BBCConfigurationType$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/BBCConfigurationType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/BBCConfigurationType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowSettingsChanges:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowStatusBarExpansion:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowHomeKey:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowClearAllNotification:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mHideSystemBar:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mWipeRecentTasks:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowSettingsChanges:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowStatusBarExpansion:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowHomeKey:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowClearAllNotification:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mHideSystemBar:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mWipeRecentTasks:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_19

    move v2, v0

    goto :goto_1a

    :cond_19
    move v2, v1

    :goto_1a
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowSettingsChanges:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_24

    move v2, v0

    goto :goto_25

    :cond_24
    move v2, v1

    :goto_25
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowStatusBarExpansion:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2f

    move v2, v0

    goto :goto_30

    :cond_2f
    move v2, v1

    :goto_30
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowHomeKey:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_3a

    move v2, v0

    goto :goto_3b

    :cond_3a
    move v2, v1

    :goto_3b
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowClearAllNotification:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_45

    move v2, v0

    goto :goto_46

    :cond_45
    move v2, v1

    :goto_46
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mHideSystemBar:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_4f

    goto :goto_50

    :cond_4f
    move v0, v1

    :goto_50
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mWipeRecentTasks:Z

    return-void
.end method


# virtual methods
.method public allowClearAllNotification(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowClearAllNotification:Z

    return-void
.end method

.method public allowHomeKey(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowHomeKey:Z

    return-void
.end method

.method public allowSettingsChanges(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowSettingsChanges:Z

    return-void
.end method

.method public allowStatusBarExpansion(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowStatusBarExpansion:Z

    return-void
.end method

.method public clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/BBCConfigurationType;
    .registers 4

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_30

    :cond_9
    new-instance v0, Lcom/samsung/android/knox/container/BBCConfigurationType;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/BBCConfigurationType;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/container/BBCConfigurationType;->cloneConfiguration(Lcom/samsung/android/knox/container/KnoxConfigurationType;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowSettingsChanges:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/BBCConfigurationType;->allowSettingsChanges(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowStatusBarExpansion:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/BBCConfigurationType;->allowStatusBarExpansion(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowHomeKey:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/BBCConfigurationType;->allowHomeKey(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowClearAllNotification:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/BBCConfigurationType;->allowClearAllNotification(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mHideSystemBar:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/BBCConfigurationType;->setHideSystemBar(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mWipeRecentTasks:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/BBCConfigurationType;->setWipeRecentTasks(Z)V

    return-object v0

    :cond_30
    :goto_30
    const-string v0, "BBCConfigurationType"

    const-string v1, "clone(): name is either null or empty, hence returning null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/BBCConfigurationType;->clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/BBCConfigurationType;

    move-result-object p1

    return-object p1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dumpState()V
    .registers 4

    const-string v0, "BBCConfigurationType"

    const-string v1, "COM config dump START:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BBCConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllowSettingsChanges : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowSettingsChanges:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BBCConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllowStatusBarExpansion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowStatusBarExpansion:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BBCConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllowHomeKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowHomeKey:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BBCConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllowClearAllNotification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowClearAllNotification:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BBCConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHideSystemBar : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mHideSystemBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BBCConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWipeRecentTasks : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mWipeRecentTasks:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->dumpState()V

    const-string v0, "BBCConfigurationType"

    const-string v1, "COM config dump END."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isClearAllNotificationAllowed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowClearAllNotification:Z

    return v0
.end method

.method public isHideSystemBarEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mHideSystemBar:Z

    return v0
.end method

.method public isHomeKeyAllowed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowHomeKey:Z

    return v0
.end method

.method public isSettingChangesAllowed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowSettingsChanges:Z

    return v0
.end method

.method public isStatusBarExpansionAllowed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowStatusBarExpansion:Z

    return v0
.end method

.method public isWipeRecentTasksEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mWipeRecentTasks:Z

    return v0
.end method

.method public setHideSystemBar(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mHideSystemBar:Z

    return-void
.end method

.method public setWipeRecentTasks(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mWipeRecentTasks:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowSettingsChanges:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowStatusBarExpansion:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowHomeKey:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowClearAllNotification:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mHideSystemBar:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mWipeRecentTasks:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
