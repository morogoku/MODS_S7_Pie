.class public abstract Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;
.super Landroid/os/Binder;
.source "IKnoxVpnPolicy.java"

# interfaces
.implements Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.net.vpn.IKnoxVpnPolicy"

.field static final TRANSACTION_activateVpnProfile:I = 0x5

.field static final TRANSACTION_addAllContainerPackagesToVpn:I = 0x18

.field static final TRANSACTION_addAllPackagesToVpn:I = 0x13

.field static final TRANSACTION_addContainerPackagesToVpn:I = 0x15

.field static final TRANSACTION_addPackagesToVpn:I = 0x10

.field static final TRANSACTION_addVpnUidRanges:I = 0x25

.field static final TRANSACTION_bindKnoxVpnInterface:I = 0x1c

.field static final TRANSACTION_checkIfVendorCreatedKnoxProfile:I = 0x22

.field static final TRANSACTION_createVpnProfile:I = 0x1

.field static final TRANSACTION_getAllContainerPackagesInVpnProfile:I = 0x17

.field static final TRANSACTION_getAllPackagesInVpnProfile:I = 0x12

.field static final TRANSACTION_getAllVpnProfiles:I = 0x4

.field static final TRANSACTION_getCACertificate:I = 0x9

.field static final TRANSACTION_getChainingEnabledForProfile:I = 0x1e

.field static final TRANSACTION_getDomainsByProfileName:I = 0x20

.field static final TRANSACTION_getErrorString:I = 0xd

.field static final TRANSACTION_getInterfaceNameForUid:I = 0x24

.field static final TRANSACTION_getKnoxVpnProfileType:I = 0x1f

.field static final TRANSACTION_getProfilesByDomain:I = 0x21

.field static final TRANSACTION_getState:I = 0xc

.field static final TRANSACTION_getUidPidEnabled:I = 0x1d

.field static final TRANSACTION_getUserCertificate:I = 0x7

.field static final TRANSACTION_getVendorNameForProfile:I = 0x23

.field static final TRANSACTION_getVpnModeOfOperation:I = 0xf

.field static final TRANSACTION_getVpnProfile:I = 0x2

.field static final TRANSACTION_isNetworkBlockedForUid:I = 0x29

.field static final TRANSACTION_removeAllContainerPackagesFromVpn:I = 0x19

.field static final TRANSACTION_removeAllPackagesFromVpn:I = 0x14

.field static final TRANSACTION_removeContainerPackagesFromVpn:I = 0x16

.field static final TRANSACTION_removePackagesFromVpn:I = 0x11

.field static final TRANSACTION_removeVpnProfile:I = 0x3

.field static final TRANSACTION_removeVpnUidRanges:I = 0x26

.field static final TRANSACTION_setAutoRetryOnConnectionError:I = 0x1b

.field static final TRANSACTION_setCACertificate:I = 0x8

.field static final TRANSACTION_setDnsPropertyForNetwork:I = 0x27

.field static final TRANSACTION_setServerCertValidationUserAcceptanceCriteria:I = 0x1a

.field static final TRANSACTION_setUserCertificate:I = 0x6

.field static final TRANSACTION_setVpnModeOfOperation:I = 0xe

.field static final TRANSACTION_showToastVpnEULA:I = 0x28

.field static final TRANSACTION_startConnection:I = 0xa

.field static final TRANSACTION_stopConnection:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.net.vpn.IKnoxVpnPolicy"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.samsung.android.knox.net.vpn.IKnoxVpnPolicy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    return-object v1

    :cond_14
    new-instance v1, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.samsung.android.knox.net.vpn.IKnoxVpnPolicy"

    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_628

    const/4 v12, 0x0

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_62c

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_1a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->isNetworkBlockedForUid(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_2c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->showToastVpnEULA()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_36
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_48

    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    goto :goto_49

    :cond_48
    nop

    :goto_49
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->setDnsPropertyForNetwork(Landroid/net/NetworkInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_50
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_62

    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    goto :goto_63

    :cond_62
    nop

    :goto_63
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->removeVpnUidRanges(Landroid/net/NetworkInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_6a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7c

    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    goto :goto_7d

    :cond_7c
    nop

    :goto_7d
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->addVpnUidRanges(Landroid/net/NetworkInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_84
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->getInterfaceNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_96
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->getVendorNameForProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_a8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->checkIfVendorCreatedKnoxProfile(Ljava/lang/String;II)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_c2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v11

    :pswitch_d4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v11

    :pswitch_e6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->getKnoxVpnProfileType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_f8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->getChainingEnabledForProfile(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_10a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->getUidPidEnabled(ILjava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_120
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_132

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_133

    :cond_132
    nop

    :goto_133
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->bindKnoxVpnInterface(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_13e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_150

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_151

    :cond_150
    nop

    :goto_151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15d

    move v2, v11

    goto :goto_15e

    :cond_15d
    move v2, v12

    :goto_15e
    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->setAutoRetryOnConnectionError(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_16e

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_171

    :cond_16e
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_171
    return v11

    :pswitch_172
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_185

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    :goto_183
    move-object v1, v0

    goto :goto_186

    :cond_185
    goto :goto_183

    :goto_186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_192

    move v3, v11

    goto :goto_193

    :cond_192
    move v3, v12

    :goto_193
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v0, v6

    move-object v2, v13

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->setServerCertValidationUserAcceptanceCriteria(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;ZLjava/util/List;I)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1b8

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1bb

    :cond_1b8
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1bb
    return v11

    :pswitch_1bc
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1ce

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_1cf

    :cond_1ce
    nop

    :goto_1cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->removeAllContainerPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1e7

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1ea

    :cond_1e7
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1ea
    return v11

    :pswitch_1eb
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1fd

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_1fe

    :cond_1fd
    nop

    :goto_1fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->addAllContainerPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_216

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_219

    :cond_216
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_219
    return v11

    :pswitch_21a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22c

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_22d

    :cond_22c
    nop

    :goto_22d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->getAllContainerPackagesInVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_245

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_248

    :cond_245
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_248
    return v11

    :pswitch_249
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_25b

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_25c

    :cond_25b
    nop

    :goto_25c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->removeContainerPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_278

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27b

    :cond_278
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_27b
    return v11

    :pswitch_27c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28e

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_28f

    :cond_28e
    nop

    :goto_28f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->addContainerPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2ab

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2ae

    :cond_2ab
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2ae
    return v11

    :pswitch_2af
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c1

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_2c2

    :cond_2c1
    nop

    :goto_2c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->removeAllPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2d6

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d9

    :cond_2d6
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2d9
    return v11

    :pswitch_2da
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2ec

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_2ed

    :cond_2ec
    nop

    :goto_2ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->addAllPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_301

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_304

    :cond_301
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_304
    return v11

    :pswitch_305
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_317

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_318

    :cond_317
    nop

    :goto_318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->getAllPackagesInVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_32c

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_32f

    :cond_32c
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_32f
    return v11

    :pswitch_330
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_342

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_343

    :cond_342
    nop

    :goto_343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->removePackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_35b

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_35e

    :cond_35b
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_35e
    return v11

    :pswitch_35f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_371

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_372

    :cond_371
    nop

    :goto_372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->addPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_38a

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_38d

    :cond_38a
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_38d
    return v11

    :pswitch_38e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3a0

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_3a1

    :cond_3a0
    nop

    :goto_3a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->getVpnModeOfOperation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3b5

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3b8

    :cond_3b5
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3b8
    return v11

    :pswitch_3b9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3cb

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_3cc

    :cond_3cb
    nop

    :goto_3cc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->setVpnModeOfOperation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;I)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_3e4

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3e7

    :cond_3e4
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3e7
    return v11

    :pswitch_3e8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3fa

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_3fb

    :cond_3fa
    nop

    :goto_3fb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->getErrorString(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_40f

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_412

    :cond_40f
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_412
    return v11

    :pswitch_413
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_425

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_426

    :cond_425
    nop

    :goto_426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->getState(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_43a

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_43d

    :cond_43a
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_43d
    return v11

    :pswitch_43e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_450

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_451

    :cond_450
    nop

    :goto_451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->stopConnection(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_465

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_468

    :cond_465
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_468
    return v11

    :pswitch_469
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_47b

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_47c

    :cond_47b
    nop

    :goto_47c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->startConnection(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_490

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_493

    :cond_490
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_493
    return v11

    :pswitch_494
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4a6

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_4a7

    :cond_4a6
    nop

    :goto_4a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->getCACertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4bb

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4be

    :cond_4bb
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4be
    return v11

    :pswitch_4bf
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4d1

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_4d2

    :cond_4d1
    nop

    :goto_4d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->setCACertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;[B)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_4ea

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4ed

    :cond_4ea
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4ed
    return v11

    :pswitch_4ee
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_500

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_501

    :cond_500
    nop

    :goto_501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->getUserCertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_515

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_518

    :cond_515
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_518
    return v11

    :pswitch_519
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_52b

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_52c

    :cond_52b
    nop

    :goto_52c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->setUserCertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_548

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_54b

    :cond_548
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_54b
    return v11

    :pswitch_54c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_55e

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_55f

    :cond_55e
    nop

    :goto_55f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_56b

    move v2, v11

    goto :goto_56c

    :cond_56b
    move v2, v12

    :goto_56c
    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->activateVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_57c

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_57f

    :cond_57c
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_57f
    return v11

    :pswitch_580
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_592

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_593

    :cond_592
    nop

    :goto_593
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->getAllVpnProfiles(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_5a3

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5a6

    :cond_5a3
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5a6
    return v11

    :pswitch_5a7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5b9

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_5ba

    :cond_5b9
    nop

    :goto_5ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->removeVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5ce

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5d1

    :cond_5ce
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5d1
    return v11

    :pswitch_5d2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5e4

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_5e5

    :cond_5e4
    nop

    :goto_5e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->getVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5f9

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5fc

    :cond_5f9
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5fc
    return v11

    :pswitch_5fd
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_60f

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_610

    :cond_60f
    nop

    :goto_610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->createVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_624

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_627

    :cond_624
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_627
    return v11

    :cond_628
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_data_62c
    .packed-switch 0x1
        :pswitch_5fd
        :pswitch_5d2
        :pswitch_5a7
        :pswitch_580
        :pswitch_54c
        :pswitch_519
        :pswitch_4ee
        :pswitch_4bf
        :pswitch_494
        :pswitch_469
        :pswitch_43e
        :pswitch_413
        :pswitch_3e8
        :pswitch_3b9
        :pswitch_38e
        :pswitch_35f
        :pswitch_330
        :pswitch_305
        :pswitch_2da
        :pswitch_2af
        :pswitch_27c
        :pswitch_249
        :pswitch_21a
        :pswitch_1eb
        :pswitch_1bc
        :pswitch_172
        :pswitch_13e
        :pswitch_120
        :pswitch_10a
        :pswitch_f8
        :pswitch_e6
        :pswitch_d4
        :pswitch_c2
        :pswitch_a8
        :pswitch_96
        :pswitch_84
        :pswitch_6a
        :pswitch_50
        :pswitch_36
        :pswitch_2c
        :pswitch_1a
    .end packed-switch
.end method
