.class public Lcom/samsung/android/knox/license/RightsObject;
.super Ljava/lang/Object;
.source "RightsObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/license/RightsObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private expiryDate:J

.field private instanceId:Ljava/lang/String;

.field private issueDate:J

.field private licenseType:Ljava/lang/String;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverUrl:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private uploadFrequencyTime:J

.field private uploadTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/license/RightsObject$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/license/RightsObject$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/license/RightsObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/license/RightsObject;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/license/RightsObject$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/license/RightsObject;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getExpiryDate()J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->expiryDate:J

    return-wide v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getIssueDate()J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->issueDate:J

    return-wide v0
.end method

.method public getLicenseType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->licenseType:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->serverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadFrequencyTime()J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadFrequencyTime:J

    return-wide v0
.end method

.method public getUploadTime()J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadTime:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->instanceId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->state:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->issueDate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->expiryDate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->licenseType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->permissions:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadFrequencyTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->serverUrl:Ljava/lang/String;

    return-void
.end method

.method public setExpiryDate(J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/knox/license/RightsObject;->expiryDate:J

    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/license/RightsObject;->instanceId:Ljava/lang/String;

    return-void
.end method

.method public setIssueDate(J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/knox/license/RightsObject;->issueDate:J

    return-void
.end method

.method public setLicenseType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/license/RightsObject;->licenseType:Ljava/lang/String;

    return-void
.end method

.method public setPermissions(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/license/RightsObject;->permissions:Ljava/util/List;

    return-void
.end method

.method public setServerUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/license/RightsObject;->serverUrl:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/license/RightsObject;->state:Ljava/lang/String;

    return-void
.end method

.method public setUploadFrequencyTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadFrequencyTime:J

    return-void
.end method

.method public setUploadTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->instanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->issueDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->expiryDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->licenseType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->permissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadFrequencyTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->serverUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
