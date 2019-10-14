.class public abstract Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;
.super Landroid/os/Binder;
.source "IKnoxVpnPolicy.java"

# interfaces
.implements Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.enterprise.knox.vpn.IKnoxVpnPolicy"

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

.field static final TRANSACTION_isNetworkBlockedForUid:I = 0x28

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

.field static final TRANSACTION_startConnection:I = 0xa

.field static final TRANSACTION_stopConnection:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.enterprise.knox.vpn.IKnoxVpnPolicy"

    invoke-virtual {p0, p0, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.sec.enterprise.knox.vpn.IKnoxVpnPolicy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    return-object v1

    :cond_14
    new-instance v1, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v10, "com.sec.enterprise.knox.vpn.IKnoxVpnPolicy"

    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_61e

    const/4 v12, 0x0

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_622

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_1a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->isNetworkBlockedForUid(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_2c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3e

    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    goto :goto_3f

    :cond_3e
    nop

    :goto_3f
    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->setDnsPropertyForNetwork(Landroid/net/NetworkInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_46
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_58

    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    goto :goto_59

    :cond_58
    nop

    :goto_59
    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->removeVpnUidRanges(Landroid/net/NetworkInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_60
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_72

    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    goto :goto_73

    :cond_72
    nop

    :goto_73
    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->addVpnUidRanges(Landroid/net/NetworkInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_7a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getInterfaceNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_8c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getVendorNameForProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_9e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->checkIfVendorCreatedKnoxProfile(Ljava/lang/String;II)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_b8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v11

    :pswitch_ca
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v11

    :pswitch_dc
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getKnoxVpnProfileType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_ee
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getChainingEnabledForProfile(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_100
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getUidPidEnabled(ILjava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_116
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_128

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_129

    :cond_128
    nop

    :goto_129
    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->bindKnoxVpnInterface(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_134
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_146

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_147

    :cond_146
    nop

    :goto_147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_153

    move v2, v11

    goto :goto_154

    :cond_153
    move v2, v12

    :goto_154
    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->setAutoRetryOnConnectionError(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_164

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_167

    :cond_164
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_167
    return v11

    :pswitch_168
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17b

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    :goto_179
    move-object v1, v0

    goto :goto_17c

    :cond_17b
    goto :goto_179

    :goto_17c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_188

    move v3, v11

    goto :goto_189

    :cond_188
    move v3, v12

    :goto_189
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

    invoke-virtual/range {v0 .. v5}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->setServerCertValidationUserAcceptanceCriteria(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;ZLjava/util/List;I)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1ae

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b1

    :cond_1ae
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b1
    return v11

    :pswitch_1b2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c4

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_1c5

    :cond_1c4
    nop

    :goto_1c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->removeAllContainerPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1dd

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e0

    :cond_1dd
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1e0
    return v11

    :pswitch_1e1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f3

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_1f4

    :cond_1f3
    nop

    :goto_1f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->addAllContainerPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_20c

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20f

    :cond_20c
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_20f
    return v11

    :pswitch_210
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_222

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_223

    :cond_222
    nop

    :goto_223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getAllContainerPackagesInVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_23b

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23e

    :cond_23b
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23e
    return v11

    :pswitch_23f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_251

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_252

    :cond_251
    nop

    :goto_252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->removeContainerPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_26e

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_271

    :cond_26e
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_271
    return v11

    :pswitch_272
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_284

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_285

    :cond_284
    nop

    :goto_285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->addContainerPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2a1

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2a4

    :cond_2a1
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2a4
    return v11

    :pswitch_2a5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2b7

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_2b8

    :cond_2b7
    nop

    :goto_2b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->removeAllPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2cc

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2cf

    :cond_2cc
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2cf
    return v11

    :pswitch_2d0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e2

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_2e3

    :cond_2e2
    nop

    :goto_2e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->addAllPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2f7

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2fa

    :cond_2f7
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2fa
    return v11

    :pswitch_2fb
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30d

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_30e

    :cond_30d
    nop

    :goto_30e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getAllPackagesInVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_322

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_325

    :cond_322
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_325
    return v11

    :pswitch_326
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_338

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_339

    :cond_338
    nop

    :goto_339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->removePackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_351

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_354

    :cond_351
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_354
    return v11

    :pswitch_355
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_367

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_368

    :cond_367
    nop

    :goto_368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->addPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_380

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_383

    :cond_380
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_383
    return v11

    :pswitch_384
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_396

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_397

    :cond_396
    nop

    :goto_397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getVpnModeOfOperation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3ab

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3ae

    :cond_3ab
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3ae
    return v11

    :pswitch_3af
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3c1

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_3c2

    :cond_3c1
    nop

    :goto_3c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->setVpnModeOfOperation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;I)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_3da

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3dd

    :cond_3da
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3dd
    return v11

    :pswitch_3de
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3f0

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_3f1

    :cond_3f0
    nop

    :goto_3f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getErrorString(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_405

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_408

    :cond_405
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_408
    return v11

    :pswitch_409
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_41b

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_41c

    :cond_41b
    nop

    :goto_41c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getState(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_430

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_433

    :cond_430
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_433
    return v11

    :pswitch_434
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_446

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_447

    :cond_446
    nop

    :goto_447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->stopConnection(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_45b

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_45e

    :cond_45b
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_45e
    return v11

    :pswitch_45f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_471

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_472

    :cond_471
    nop

    :goto_472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->startConnection(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_486

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_489

    :cond_486
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_489
    return v11

    :pswitch_48a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_49c

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_49d

    :cond_49c
    nop

    :goto_49d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getCACertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4b1

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4b4

    :cond_4b1
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4b4
    return v11

    :pswitch_4b5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4c7

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_4c8

    :cond_4c7
    nop

    :goto_4c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->setCACertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;[B)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_4e0

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4e3

    :cond_4e0
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4e3
    return v11

    :pswitch_4e4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4f6

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_4f7

    :cond_4f6
    nop

    :goto_4f7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getUserCertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_50b

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_50e

    :cond_50b
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_50e
    return v11

    :pswitch_50f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_521

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_522

    :cond_521
    nop

    :goto_522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->setUserCertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_53e

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_541

    :cond_53e
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_541
    return v11

    :pswitch_542
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_554

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_555

    :cond_554
    nop

    :goto_555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_561

    move v2, v11

    goto :goto_562

    :cond_561
    move v2, v12

    :goto_562
    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->activateVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_572

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_575

    :cond_572
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_575
    return v11

    :pswitch_576
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_588

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_589

    :cond_588
    nop

    :goto_589
    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getAllVpnProfiles(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_599

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_59c

    :cond_599
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_59c
    return v11

    :pswitch_59d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5af

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_5b0

    :cond_5af
    nop

    :goto_5b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->removeVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5c4

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5c7

    :cond_5c4
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5c7
    return v11

    :pswitch_5c8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5da

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_5db

    :cond_5da
    nop

    :goto_5db
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5ef

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5f2

    :cond_5ef
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5f2
    return v11

    :pswitch_5f3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_605

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_606

    :cond_605
    nop

    :goto_606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->createVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_61a

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_61d

    :cond_61a
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_61d
    return v11

    :cond_61e
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_data_622
    .packed-switch 0x1
        :pswitch_5f3
        :pswitch_5c8
        :pswitch_59d
        :pswitch_576
        :pswitch_542
        :pswitch_50f
        :pswitch_4e4
        :pswitch_4b5
        :pswitch_48a
        :pswitch_45f
        :pswitch_434
        :pswitch_409
        :pswitch_3de
        :pswitch_3af
        :pswitch_384
        :pswitch_355
        :pswitch_326
        :pswitch_2fb
        :pswitch_2d0
        :pswitch_2a5
        :pswitch_272
        :pswitch_23f
        :pswitch_210
        :pswitch_1e1
        :pswitch_1b2
        :pswitch_168
        :pswitch_134
        :pswitch_116
        :pswitch_100
        :pswitch_ee
        :pswitch_dc
        :pswitch_ca
        :pswitch_b8
        :pswitch_9e
        :pswitch_8c
        :pswitch_7a
        :pswitch_60
        :pswitch_46
        :pswitch_2c
        :pswitch_1a
    .end packed-switch
.end method
