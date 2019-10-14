.class public Lcom/samsung/android/knox/net/nap/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/nap/Profile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activationState:I

.field private jsonProfile:Ljava/lang/String;

.field private userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/net/nap/Profile$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/nap/Profile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/nap/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/net/nap/Profile;->jsonProfile:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/knox/net/nap/Profile;->userId:I

    iput p1, p0, Lcom/samsung/android/knox/net/nap/Profile;->activationState:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/nap/Profile;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/net/nap/Profile$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/nap/Profile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/nap/Profile;->jsonProfile:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/nap/Profile;->userId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/nap/Profile;->activationState:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActivationState()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/net/nap/Profile;->activationState:I

    return v0
.end method

.method public getJsonProfile()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/nap/Profile;->jsonProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/net/nap/Profile;->userId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/net/nap/Profile;->jsonProfile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/net/nap/Profile;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/net/nap/Profile;->activationState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
