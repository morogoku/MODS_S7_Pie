.class public abstract Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;
.super Landroid/os/Binder;
.source "IClientCertificateManager.java"

# interfaces
.implements Lcom/samsung/android/knox/keystore/IClientCertificateManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/keystore/IClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.keystore.IClientCertificateManager"

.field static final TRANSACTION_addPackageToExemptList:I = 0x15

.field static final TRANSACTION_deleteCCMProfile:I = 0x8

.field static final TRANSACTION_deleteCSRProfile:I = 0x10

.field static final TRANSACTION_deleteCertificate:I = 0xa

.field static final TRANSACTION_generateCSR:I = 0x2

.field static final TRANSACTION_generateCSRUsingByteArray:I = 0x12

.field static final TRANSACTION_generateCSRUsingString:I = 0x13

.field static final TRANSACTION_generateCSRUsingTemplate:I = 0x11

.field static final TRANSACTION_generateKeyPair:I = 0x5

.field static final TRANSACTION_getAliasesForCaller:I = 0x1a

.field static final TRANSACTION_getAliasesForPackage:I = 0x26

.field static final TRANSACTION_getAliasesForWiFi:I = 0x1c

.field static final TRANSACTION_getCCMProfile:I = 0x7

.field static final TRANSACTION_getCCMVersion:I = 0x17

.field static final TRANSACTION_getCertificateAliases:I = 0x21

.field static final TRANSACTION_getCertificateAliasesHavingPrivateKey:I = 0x22

.field static final TRANSACTION_getDefaultCertificateAlias:I = 0x19

.field static final TRANSACTION_getKeyChainMarkedAliases:I = 0x1f

.field static final TRANSACTION_getSlotIdForCaller:I = 0xd

.field static final TRANSACTION_getSlotIdForPackage:I = 0xe

.field static final TRANSACTION_getWifiAliasPreferredUid:I = 0x2f

.field static final TRANSACTION_hasGrant:I = 0x2b

.field static final TRANSACTION_hasGrantWithCxt:I = 0x2c

.field static final TRANSACTION_insertOrUpdateCCMProfile:I = 0x24

.field static final TRANSACTION_insertOrUpdateCertificateProfile:I = 0x25

.field static final TRANSACTION_installCertificate:I = 0x9

.field static final TRANSACTION_installKeyPair:I = 0x28

.field static final TRANSACTION_installObject:I = 0x4

.field static final TRANSACTION_installObjectWithProfile:I = 0x23

.field static final TRANSACTION_installObjectWithType:I = 0x18

.field static final TRANSACTION_isAccessControlMethodPassword:I = 0x1b

.field static final TRANSACTION_isCCMEmptyForKeyChain:I = 0x20

.field static final TRANSACTION_isCCMPolicyEnabledByAdmin:I = 0x14

.field static final TRANSACTION_isCCMPolicyEnabledForCaller:I = 0xb

.field static final TRANSACTION_isCCMPolicyEnabledForPackage:I = 0xc

.field static final TRANSACTION_isCCMPolicyEnabledForUid:I = 0x1

.field static final TRANSACTION_isKeyChainMarkedAlias:I = 0x1d

.field static final TRANSACTION_keychainMarkedReset:I = 0x1e

.field static final TRANSACTION_notifyLicenseStatus:I = 0x2e

.field static final TRANSACTION_registerForDefaultCertificate:I = 0x3

.field static final TRANSACTION_removeKeyPair:I = 0x29

.field static final TRANSACTION_removePackageFromExemptList:I = 0x16

.field static final TRANSACTION_setCCMProfile:I = 0x6

.field static final TRANSACTION_setCSRProfile:I = 0xf

.field static final TRANSACTION_setDefaultCCMProfile:I = 0x27

.field static final TRANSACTION_setGrant:I = 0x2a

.field static final TRANSACTION_updateDBdata:I = 0x2d


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.keystore.IClientCertificateManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.samsung.android.knox.keystore.IClientCertificateManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    return-object v1

    :cond_14
    new-instance v1, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "com.samsung.android.knox.keystore.IClientCertificateManager"

    const v0, 0x5f4e5446

    const/4 v15, 0x1

    if-eq v11, v0, :cond_6f5

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch v11, :pswitch_data_6fa

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_1a
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getWifiAliasPreferredUid(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_2c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->notifyLicenseStatus()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_3a
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_50

    sget-object v1, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    goto :goto_51

    :cond_50
    move-object v1, v2

    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_60

    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    goto :goto_61

    :cond_60
    nop

    :goto_61
    invoke-virtual {v10, v0, v1, v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->updateDBdata(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_6c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_83

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_84

    :cond_83
    nop

    :goto_84
    move-object v1, v2

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->hasGrantWithCxt(Ljava/lang/String;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_90
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->hasGrant(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_a2
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b5

    move v0, v15

    nop

    :cond_b5
    invoke-virtual {v10, v1, v2, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setGrant(ILjava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_bc
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_cf

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_d0

    :cond_cf
    nop

    :goto_d0
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->removeKeyPair(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_e0
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f3

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    goto :goto_f4

    :cond_f3
    move-object v1, v2

    :goto_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v10

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installKeyPair(Lcom/samsung/android/knox/ContextInfo;[B[B[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_11b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setDefaultCCMProfile()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_129
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13c

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_13d

    :cond_13c
    nop

    :goto_13d
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getAliasesForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v15

    :pswitch_14d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_160

    :cond_15f
    move-object v0, v2

    :goto_160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_170

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificateProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/keystore/CertificateProfile;

    goto :goto_171

    :cond_170
    nop

    :goto_171
    move-object v1, v2

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->insertOrUpdateCertificateProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_17d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_190

    :cond_18f
    move-object v0, v2

    :goto_190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a0

    sget-object v1, Lcom/samsung/android/knox/keystore/CCMProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/keystore/CCMProfile;

    goto :goto_1a1

    :cond_1a0
    nop

    :goto_1a1
    move-object v1, v2

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->insertOrUpdateCCMProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_1ad
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c0

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    goto :goto_1c1

    :cond_1c0
    move-object v1, v2

    :goto_1c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d1

    sget-object v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/keystore/CertificateProfile;

    move-object v2, v0

    nop

    :cond_1d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v10

    move v3, v6

    move-object v4, v7

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installObjectWithProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;I[BLjava/lang/String;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_1ec
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ff

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_200

    :cond_1ff
    nop

    :goto_200
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCertificateAliasesHavingPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v15

    :pswitch_20c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_220

    :cond_21f
    nop

    :goto_220
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCertificateAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v15

    :pswitch_22c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_240

    :cond_23f
    nop

    :goto_240
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMEmptyForKeyChain(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_24c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_260

    :cond_25f
    nop

    :goto_260
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getKeyChainMarkedAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v15

    :pswitch_26c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_280

    :cond_27f
    nop

    :goto_280
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->keychainMarkedReset(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_28c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2a0

    :cond_29f
    nop

    :goto_2a0
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isKeyChainMarkedAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_2b0
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v15

    :pswitch_2be
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d1

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2d2

    :cond_2d1
    nop

    :goto_2d2
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isAccessControlMethodPassword(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_2de
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f1

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2f2

    :cond_2f1
    nop

    :goto_2f2
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getAliasesForCaller(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v15

    :pswitch_2fe
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getDefaultCertificateAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    :pswitch_30c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    goto :goto_320

    :cond_31f
    move-object v1, v2

    :goto_320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v10

    move-object v2, v6

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installObjectWithType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I[BLjava/lang/String;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_340
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCCMVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    :pswitch_34e
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_361

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_362

    :cond_361
    nop

    :goto_362
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->removePackageFromExemptList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_372
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_385

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_386

    :cond_385
    nop

    :goto_386
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->addPackageToExemptList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_396
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_3a8
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3bb

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    goto :goto_3bc

    :cond_3bb
    move-object v1, v2

    :goto_3bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v0, v10

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSRUsingString(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v15

    :pswitch_3dc
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3ef

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    goto :goto_3f0

    :cond_3ef
    move-object v1, v2

    :goto_3f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v0, v10

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSRUsingByteArray(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v15

    :pswitch_410
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_423

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_424

    :cond_423
    nop

    :goto_424
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSRUsingTemplate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    return v15

    :pswitch_43c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_450

    :cond_44f
    nop

    :goto_450
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->deleteCSRProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_460
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_472

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_473

    :cond_472
    move-object v0, v2

    :goto_473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_483

    sget-object v1, Lcom/samsung/android/knox/keystore/CSRProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/keystore/CSRProfile;

    goto :goto_484

    :cond_483
    nop

    :goto_484
    move-object v1, v2

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setCSRProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CSRProfile;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_490
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4a3

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4a4

    :cond_4a3
    nop

    :goto_4a4
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v1, v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getSlotIdForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    return v15

    :pswitch_4b8
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4cb

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4cc

    :cond_4cb
    nop

    :goto_4cc
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getSlotIdForCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v15

    :pswitch_4dc
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4ef

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4f0

    :cond_4ef
    nop

    :goto_4f0
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_500
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_513

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_514

    :cond_513
    nop

    :goto_514
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_520
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_533

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_534

    :cond_533
    nop

    :goto_534
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_544
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_556

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_557

    :cond_556
    move-object v0, v2

    :goto_557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_567

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificateProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/keystore/CertificateProfile;

    goto :goto_568

    :cond_567
    nop

    :goto_568
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_57c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_58f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_590

    :cond_58f
    nop

    :goto_590
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->deleteCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_59c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5af

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5b0

    :cond_5af
    nop

    :goto_5b0
    move-object v1, v2

    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/keystore/CCMProfile;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5c1

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v13, v15}, Lcom/samsung/android/knox/keystore/CCMProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5c4

    :cond_5c1
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5c4
    return v15

    :pswitch_5c5
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5d7

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5d8

    :cond_5d7
    move-object v0, v2

    :goto_5d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5e8

    sget-object v1, Lcom/samsung/android/knox/keystore/CCMProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/keystore/CCMProfile;

    goto :goto_5e9

    :cond_5e8
    nop

    :goto_5e9
    move-object v1, v2

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setCCMProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_5f5
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_608

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_609

    :cond_608
    nop

    :goto_609
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateKeyPair(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)[B

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    return v15

    :pswitch_61d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_62f

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_630

    :cond_62f
    move-object v1, v2

    :goto_630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_654

    move v9, v15

    goto :goto_655

    :cond_654
    move v9, v0

    :goto_655
    move-object v0, v10

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installObject(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Z)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_66f
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_681

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_682

    :cond_681
    move-object v1, v2

    :goto_682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_696

    move v5, v15

    goto :goto_697

    :cond_696
    move v5, v0

    :goto_697
    move-object v0, v10

    move v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->registerForDefaultCertificate(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_6a6
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6b8

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_6b9

    :cond_6b8
    move-object v1, v2

    :goto_6b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6d1

    move v6, v15

    goto :goto_6d2

    :cond_6d1
    move v6, v0

    :goto_6d2
    move-object v0, v10

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSR(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v15

    :pswitch_6e3
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMPolicyEnabledForUid(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :cond_6f5
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    nop

    :pswitch_data_6fa
    .packed-switch 0x1
        :pswitch_6e3
        :pswitch_6a6
        :pswitch_66f
        :pswitch_61d
        :pswitch_5f5
        :pswitch_5c5
        :pswitch_59c
        :pswitch_57c
        :pswitch_544
        :pswitch_520
        :pswitch_500
        :pswitch_4dc
        :pswitch_4b8
        :pswitch_490
        :pswitch_460
        :pswitch_43c
        :pswitch_410
        :pswitch_3dc
        :pswitch_3a8
        :pswitch_396
        :pswitch_372
        :pswitch_34e
        :pswitch_340
        :pswitch_30c
        :pswitch_2fe
        :pswitch_2de
        :pswitch_2be
        :pswitch_2b0
        :pswitch_28c
        :pswitch_26c
        :pswitch_24c
        :pswitch_22c
        :pswitch_20c
        :pswitch_1ec
        :pswitch_1ad
        :pswitch_17d
        :pswitch_14d
        :pswitch_129
        :pswitch_11b
        :pswitch_e0
        :pswitch_bc
        :pswitch_a2
        :pswitch_90
        :pswitch_6c
        :pswitch_3a
        :pswitch_2c
        :pswitch_1a
    .end packed-switch
.end method
