.class public Lcom/samsung/android/knox/shareddevice/UserCredentials;
.super Ljava/lang/Object;
.source "UserCredentials.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/shareddevice/UserCredentials;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field domainName:Ljava/lang/String;

.field password:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/shareddevice/UserCredentials$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/shareddevice/UserCredentials$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->username:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->password:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->domainName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->username:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->password:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->domainName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDomainName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->domainName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->username:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->domainName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
