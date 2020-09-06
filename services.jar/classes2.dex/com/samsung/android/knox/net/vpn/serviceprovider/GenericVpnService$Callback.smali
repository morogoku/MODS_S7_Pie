.class Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;
.super Landroid/os/Binder;
.source "GenericVpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;->this$0:Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;-><init>(Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;)V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    const v0, 0xffffff

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;->this$0:Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->onRevoke()V

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method
