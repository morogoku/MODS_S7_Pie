.class public Lcom/android/server/NSConnectionRecord;
.super Ljava/lang/Object;
.source "NSConnectionRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/NSConnectionRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private componentName:Ljava/lang/String;

.field private connectedTime:J

.field private connectionCount:I

.field private disconnectedTime:J

.field private disconnectionCount:I

.field private final logTag:Ljava/lang/String;

.field private packageAddedTime:J

.field private packageChangedTime:J

.field private packageName:Ljava/lang/String;

.field private packageRemovedTime:J

.field private packageUpdatedTime:J

.field private prevComponentName:Ljava/lang/String;

.field private prevPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/NSConnectionRecord$1;

    invoke-direct {v0}, Lcom/android/server/NSConnectionRecord$1;-><init>()V

    sput-object v0, Lcom/android/server/NSConnectionRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NSConnectionRecord;->componentName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/NSConnectionRecord;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/NSConnectionRecord;->connectionCount:I

    iput v0, p0, Lcom/android/server/NSConnectionRecord;->disconnectionCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->connectedTime:J

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->disconnectedTime:J

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageUpdatedTime:J

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageAddedTime:J

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageRemovedTime:J

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageChangedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NSConnectionRecord;->logTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NSConnectionRecord;->componentName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NSConnectionRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/NSConnectionRecord;->connectionCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/NSConnectionRecord;->disconnectionCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->connectedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->disconnectedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageUpdatedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageAddedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageRemovedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageChangedTime:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NSConnectionRecord;->componentName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/NSConnectionRecord;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/NSConnectionRecord;->connectionCount:I

    iput v0, p0, Lcom/android/server/NSConnectionRecord;->disconnectionCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->connectedTime:J

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->disconnectedTime:J

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageUpdatedTime:J

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageAddedTime:J

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageRemovedTime:J

    iput-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageChangedTime:J

    iput-object p1, p0, Lcom/android/server/NSConnectionRecord;->logTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getComponentName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NSConnectionRecord;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectedTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/NSConnectionRecord;->connectedTime:J

    return-wide v0
.end method

.method public getConnectionCount()I
    .registers 2

    iget v0, p0, Lcom/android/server/NSConnectionRecord;->connectionCount:I

    return v0
.end method

.method public getDisconnectedDuration()J
    .registers 5

    iget-wide v0, p0, Lcom/android/server/NSConnectionRecord;->connectedTime:J

    iget-wide v2, p0, Lcom/android/server/NSConnectionRecord;->disconnectedTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_e

    iget-wide v0, p0, Lcom/android/server/NSConnectionRecord;->connectedTime:J

    iget-wide v2, p0, Lcom/android/server/NSConnectionRecord;->disconnectedTime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDisconnectedTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/NSConnectionRecord;->disconnectedTime:J

    return-wide v0
.end method

.method public getDisconnectionCount()I
    .registers 2

    iget v0, p0, Lcom/android/server/NSConnectionRecord;->disconnectionCount:I

    return v0
.end method

.method public getPackageAddedTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageAddedTime:J

    return-wide v0
.end method

.method public getPackageChangedTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageChangedTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NSConnectionRecord;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageRemovedTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageRemovedTime:J

    return-wide v0
.end method

.method public getPackageUpdatedTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageUpdatedTime:J

    return-wide v0
.end method

.method public getPrevComponentName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setComponentName(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/NSConnectionRecord;->componentName:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/NSConnectionRecord;->componentName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    :cond_8
    iput-object p1, p0, Lcom/android/server/NSConnectionRecord;->componentName:Ljava/lang/String;

    return-void
.end method

.method public setConnectedTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/NSConnectionRecord;->connectedTime:J

    return-void
.end method

.method public setConnectionCount(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/NSConnectionRecord;->connectionCount:I

    return-void
.end method

.method public setDisconnectedTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/NSConnectionRecord;->disconnectedTime:J

    return-void
.end method

.method public setDisconnectionCount(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/NSConnectionRecord;->disconnectionCount:I

    return-void
.end method

.method public setPackageAddedTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/NSConnectionRecord;->packageAddedTime:J

    return-void
.end method

.method public setPackageChangedTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/NSConnectionRecord;->packageChangedTime:J

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/NSConnectionRecord;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/NSConnectionRecord;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    :cond_8
    iput-object p1, p0, Lcom/android/server/NSConnectionRecord;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPackageRemovedTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/NSConnectionRecord;->packageRemovedTime:J

    return-void
.end method

.method public setPackageUpdatedTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/NSConnectionRecord;->packageUpdatedTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/NSConnectionRecord;->logTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_prevComp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/NSConnectionRecord;->getPrevComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_comp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/NSConnectionRecord;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_connCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/NSConnectionRecord;->getConnectionCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_discCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/NSConnectionRecord;->getDisconnectionCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_discTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/NSConnectionRecord;->getDisconnectedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_discDur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/NSConnectionRecord;->getDisconnectedDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/NSConnectionRecord;->logTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NSConnectionRecord;->componentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NSConnectionRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/NSConnectionRecord;->connectionCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/NSConnectionRecord;->disconnectionCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/server/NSConnectionRecord;->connectedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/server/NSConnectionRecord;->disconnectedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageUpdatedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageAddedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageRemovedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/server/NSConnectionRecord;->packageChangedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
