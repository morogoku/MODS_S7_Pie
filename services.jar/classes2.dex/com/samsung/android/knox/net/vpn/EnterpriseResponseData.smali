.class public Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
.super Ljava/lang/Object;
.source "EnterpriseResponseData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final APINOTSUPPORTED:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x1

.field public static final EXCEPTIONFAILURE:I = 0x3

.field public static final FAILURE:I = 0x1

.field public static final INSTALL_FAILURE:I = 0x6

.field public static final INVALID_ADMIN:I = 0x8

.field public static final INVALID_CONTAINER_ID:I = 0xb

.field public static final INVALID_PARAMETER:I = 0x9

.field public static final INVALID_VENDOR:I = 0x7

.field public static final INVALID_VPN_STATE:I = 0xc

.field public static final NOERROR:I = 0x0

.field public static final NULLPACKAGE:I = 0x4

.field public static final NULLPROFILE:I = 0x2

.field public static final SERVICE_NOT_STARTED:I = 0xa

.field public static final SUCCESS:I = 0x0

.field public static final SYSTEM_UID_FAILURE:I = 0x5


# instance fields
.field public mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mFailureState:I

.field public mStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mStatus:I

    iput v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mStatus:I

    iput v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getFailureState()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mStatus:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    return-void
.end method

.method public setStatus(II)V
    .registers 3

    iput p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mStatus:I

    iput p2, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
