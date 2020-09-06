.class public abstract Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Stub;
.super Landroid/os/Binder;
.source "ISmartCardLockscreenPolicy.java"

# interfaces
.implements Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.enterprise.knox.smartcard.policy.ISmartCardLockscreenPolicy"

.field static final TRANSACTION_disableAuthentication:I = 0x2

.field static final TRANSACTION_enableAuthentication:I = 0x1

.field static final TRANSACTION_isAuthenticationEnabled:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.enterprise.knox.smartcard.policy.ISmartCardLockscreenPolicy"

    invoke-virtual {p0, p0, v0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.sec.enterprise.knox.smartcard.policy.ISmartCardLockscreenPolicy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy;

    return-object v1

    :cond_14
    new-instance v1, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.sec.enterprise.knox.smartcard.policy.ISmartCardLockscreenPolicy"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3a

    packed-switch p1, :pswitch_data_3e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Stub;->isAuthenticationEnabled()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Stub;->disableAuthentication()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Stub;->enableAuthentication()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_3a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_1e
        :pswitch_10
    .end packed-switch
.end method
