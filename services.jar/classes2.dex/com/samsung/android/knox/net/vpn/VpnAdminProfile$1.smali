.class Lcom/samsung/android/knox/net/vpn/VpnAdminProfile$1;
.super Ljava/lang/Object;
.source "VpnAdminProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;
    .registers 4

    new-instance v0, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;-><init>(Landroid/os/Parcel;Lcom/samsung/android/knox/net/vpn/VpnAdminProfile$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;
    .registers 3

    new-array v0, p1, [Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile$1;->newArray(I)[Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;

    move-result-object p1

    return-object p1
.end method
