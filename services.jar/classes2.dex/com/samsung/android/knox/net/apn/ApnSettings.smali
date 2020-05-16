.class public Lcom/samsung/android/knox/net/apn/ApnSettings;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final MVNO_GID:Ljava/lang/String; = "gid"

.field public static final MVNO_IMSI:Ljava/lang/String; = "imsi"

.field public static final MVNO_NONE:Ljava/lang/String; = ""

.field public static final MVNO_SPN:Ljava/lang/String; = "spn"

.field public static final PROTOCOL_IPV4:Ljava/lang/String; = "IP"

.field public static final PROTOCOL_IPV4_IPV6:Ljava/lang/String; = "IPV4V6"

.field public static final PROTOCOL_IPV6:Ljava/lang/String; = "IPV6"


# instance fields
.field public apn:Ljava/lang/String;

.field public authType:I

.field public id:J

.field public mcc:Ljava/lang/String;

.field public mmsPort:Ljava/lang/String;

.field public mmsProxy:Ljava/lang/String;

.field public mmsc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field public mvno_type:Ljava/lang/String;

.field public mvno_value:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public port:I

.field public protocol:Ljava/lang/String;

.field public proxy:Ljava/lang/String;

.field public roamingProtocol:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/net/apn/ApnSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/apn/ApnSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    const-string v0, "IP"

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    const-string v0, "IP"

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    const-string v0, "IP"

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    const-string v0, "IP"

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/apn/ApnSettings;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/net/apn/ApnSettings$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getApn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthType()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    return v0
.end method

.method public getId()J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    return-wide v0
.end method

.method public getMcc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsPort()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsProxy()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    return v0
.end method

.method public getProxy()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    return-void
.end method

.method public setApn(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    return-void
.end method

.method public setAuthType(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    return-void
.end method

.method public setId(J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    return-void
.end method

.method public setMmsPort(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    return-void
.end method

.method public setMmsProxy(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    return-void
.end method

.method public setMmsc(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
