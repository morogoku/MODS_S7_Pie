.class public abstract Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;
.super Landroid/os/Binder;
.source "IEnterpriseSharedDevicePolicy.java"

# interfaces
.implements Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.shareddevice.IEnterpriseSharedDevicePolicy"

.field static final TRANSACTION_applyPasswordPolicy:I = 0xd

.field static final TRANSACTION_cancelProgressDialog:I = 0x7

.field static final TRANSACTION_checkTIMAStatusSD:I = 0xa

.field static final TRANSACTION_clearData:I = 0x6

.field static final TRANSACTION_clearDataWithUserID:I = 0xb

.field static final TRANSACTION_clearSDTIMA:I = 0x9

.field static final TRANSACTION_getSDUserName:I = 0x10

.field static final TRANSACTION_getSharedDevicePolicies:I = 0xc

.field static final TRANSACTION_hideScrim:I = 0xf

.field static final TRANSACTION_isSharedDeviceEnabled:I = 0x2

.field static final TRANSACTION_notifyUserSignedIn:I = 0x4

.field static final TRANSACTION_performUserAuthentication:I = 0x3

.field static final TRANSACTION_sendIntentforBroadcast:I = 0x8

.field static final TRANSACTION_setSharedDeviceState:I = 0x1

.field static final TRANSACTION_showScrim:I = 0xe

.field static final TRANSACTION_signOutUser:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.shareddevice.IEnterpriseSharedDevicePolicy"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.samsung.android.knox.shareddevice.IEnterpriseSharedDevicePolicy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;

    return-object v1

    :cond_14
    new-instance v1, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.knox.shareddevice.IEnterpriseSharedDevicePolicy"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_15d

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_162

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->getSDUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->hideScrim()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->showScrim()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_34
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->applyPasswordPolicy(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_46
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->getSharedDevicePolicies()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_59

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5c

    :cond_59
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5c
    return v2

    :pswitch_5d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->clearDataWithUserID(II)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_73
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->checkTIMAStatusSD(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->clearSDTIMA(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_aa

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/Intent;

    goto :goto_ab

    :cond_aa
    nop

    :goto_ab
    move-object v1, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->sendIntentforBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_b7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->cancelProgressDialog()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_c1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->clearData(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_d3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_de

    move v1, v2

    nop

    :cond_de
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->signOutUser(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_e9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_fc

    sget-object v1, Lcom/samsung/android/knox/shareddevice/UserCredentials;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/shareddevice/UserCredentials;

    goto :goto_fd

    :cond_fc
    nop

    :goto_fd
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->notifyUserSignedIn(Lcom/samsung/android/knox/shareddevice/UserCredentials;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_105
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_118

    sget-object v1, Lcom/samsung/android/knox/shareddevice/UserCredentials;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/knox/shareddevice/UserCredentials;

    goto :goto_119

    :cond_118
    nop

    :goto_119
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->performUserAuthentication(Lcom/samsung/android/knox/shareddevice/UserCredentials;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_125
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->isSharedDeviceEnabled()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_133
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_145

    sget-object v3, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_146

    :cond_145
    nop

    :goto_146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_152

    move v1, v2

    nop

    :cond_152
    invoke-virtual {p0, v3, v4, v1}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->setSharedDeviceState(Lcom/samsung/android/knox/ContextInfo;IZ)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_15d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_162
    .packed-switch 0x1
        :pswitch_133
        :pswitch_125
        :pswitch_105
        :pswitch_e9
        :pswitch_d3
        :pswitch_c1
        :pswitch_b7
        :pswitch_97
        :pswitch_85
        :pswitch_73
        :pswitch_5d
        :pswitch_46
        :pswitch_34
        :pswitch_2a
        :pswitch_20
        :pswitch_12
    .end packed-switch
.end method
