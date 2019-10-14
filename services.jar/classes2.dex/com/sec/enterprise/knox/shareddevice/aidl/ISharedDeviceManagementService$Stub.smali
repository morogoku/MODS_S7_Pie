.class public abstract Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService$Stub;
.super Landroid/os/Binder;
.source "ISharedDeviceManagementService.java"

# interfaces
.implements Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice.aidl.ISharedDeviceManagementService"

.field static final TRANSACTION_notifyUserSignedIn:I = 0x1

.field static final TRANSACTION_performUserAuthentication:I = 0x3

.field static final TRANSACTION_signOutUser:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.enterprise.knox.shareddevice.aidl.ISharedDeviceManagementService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.sec.enterprise.knox.shareddevice.aidl.ISharedDeviceManagementService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

    return-object v1

    :cond_14
    new-instance v1, Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.sec.enterprise.knox.shareddevice.aidl.ISharedDeviceManagementService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_60

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_64

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_23

    sget-object v1, Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    goto :goto_24

    :cond_23
    nop

    :goto_24
    invoke-virtual {p0, v1}, Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService$Stub;->performUserAuthentication(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_2f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3a

    move v1, v2

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    invoke-virtual {p0, v1}, Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService$Stub;->signOutUser(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_46
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_58

    sget-object v1, Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    goto :goto_59

    :cond_58
    nop

    :goto_59
    invoke-virtual {p0, v1}, Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService$Stub;->notifyUserSignedIn(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_60
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_46
        :pswitch_2f
        :pswitch_11
    .end packed-switch
.end method
