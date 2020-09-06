.class public abstract Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;
.super Landroid/os/Binder;
.source "IKnoxGuardManager.java"

# interfaces
.implements Lcom/samsung/android/knoxguard/IKnoxGuardManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knoxguard/IKnoxGuardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knoxguard.IKnoxGuardManager"

.field static final TRANSACTION_addPackagesToClearCacheBlackList:I = 0x8

.field static final TRANSACTION_addPackagesToForceStopBlackList:I = 0x7

.field static final TRANSACTION_allowFirmwareRecovery:I = 0x4

.field static final TRANSACTION_allowOTAUpgrade:I = 0x5

.field static final TRANSACTION_allowSafeMode:I = 0x6

.field static final TRANSACTION_bindToLockScreen:I = 0x14

.field static final TRANSACTION_callKGsv:I = 0x1

.field static final TRANSACTION_getKGServiceVersion:I = 0x15

.field static final TRANSACTION_getPBAUniqueNumber:I = 0xf

.field static final TRANSACTION_registerIntent:I = 0x2

.field static final TRANSACTION_removeActiveAdmin:I = 0xb

.field static final TRANSACTION_revokeRuntimePermission:I = 0xd

.field static final TRANSACTION_setActiveAdmin:I = 0xa

.field static final TRANSACTION_setAdminRemovable:I = 0x3

.field static final TRANSACTION_setApplicationUninstallationDisabled:I = 0x9

.field static final TRANSACTION_setKnoxGuardExemptRule:I = 0x12

.field static final TRANSACTION_setNetRegistRejectCause:I = 0x13

.field static final TRANSACTION_setRemoteLockToLockscreen:I = 0xe

.field static final TRANSACTION_setRuntimePermission:I = 0xc

.field static final TRANSACTION_shouldBlockCustomRom:I = 0x11

.field static final TRANSACTION_showInstallmentStatus:I = 0x10

.field static final TRANSACTION_unRegisterIntent:I = 0x16


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knoxguard.IKnoxGuardManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knoxguard/IKnoxGuardManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.samsung.android.knoxguard.IKnoxGuardManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    return-object v1

    :cond_14
    new-instance v1, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v14, p0

    move/from16 v15, p1

    move-object/from16 v11, p2

    move-object/from16 v9, p3

    const-string v10, "com.samsung.android.knoxguard.IKnoxGuardManager"

    const v0, 0x5f4e5446

    const/16 v16, 0x1

    if-eq v15, v0, :cond_25a

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v15, :pswitch_data_262

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_1b
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->unRegisterIntent()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    :pswitch_25
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getKGServiceVersion()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v16

    :pswitch_33
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->bindToLockScreen()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    :pswitch_3d
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14, v0, v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setNetRegistRejectCause(II)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v16

    :pswitch_53
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5f

    move/from16 v1, v16

    nop

    :cond_5f
    move v0, v1

    invoke-virtual {v14, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setKnoxGuardExemptRule(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    :pswitch_67
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->shouldBlockCustomRom()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v16

    :pswitch_75
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->showInstallmentStatus()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v16

    :pswitch_83
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getPBAUniqueNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v16

    :pswitch_91
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a1

    move/from16 v2, v16

    goto :goto_a2

    :cond_a1
    move v2, v1

    :goto_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b7

    move/from16 v6, v16

    goto :goto_b8

    :cond_b7
    move v6, v1

    :goto_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d1

    move/from16 v12, v16

    goto :goto_d2

    :cond_d1
    move v12, v1

    :goto_d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_e0
    move-object v13, v0

    goto :goto_e3

    :cond_e2
    goto :goto_e0

    :goto_e3
    move-object v0, v14

    move/from16 v1, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move-object v15, v10

    move-wide/from16 v9, v23

    move-object v14, v11

    move/from16 v11, v25

    invoke-virtual/range {v0 .. v13}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    :pswitch_fd
    move-object v15, v10

    move-object v14, v11

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_119

    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    goto :goto_11a

    :cond_119
    nop

    :goto_11a
    move-object v4, v14

    move-object/from16 v3, p0

    invoke-virtual {v3, v1, v2, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    :pswitch_124
    move-object v15, v10

    move-object v4, v11

    move-object v3, v14

    invoke-virtual {v4, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_141

    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    goto :goto_142

    :cond_141
    nop

    :goto_142
    invoke-virtual {v3, v1, v2, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    :pswitch_149
    move-object v15, v10

    move-object v4, v11

    move-object v3, v14

    invoke-virtual {v4, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15e

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_15f

    :cond_15e
    nop

    :goto_15f
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    :pswitch_166
    move-object v15, v10

    move-object v4, v11

    move-object v3, v14

    invoke-virtual {v4, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_17c

    :cond_17b
    nop

    :goto_17c
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    :pswitch_183
    move-object v15, v10

    move-object v4, v11

    move-object v3, v14

    invoke-virtual {v4, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setApplicationUninstallationDisabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v16

    :pswitch_19a
    move-object v2, v9

    move-object v15, v10

    move-object v4, v11

    move-object v3, v14

    invoke-virtual {v4, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v16

    :pswitch_1b0
    move-object v2, v9

    move-object v15, v10

    move-object v4, v11

    move-object v3, v14

    invoke-virtual {v4, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v16

    :pswitch_1c6
    move-object v2, v9

    move-object v15, v10

    move-object v4, v11

    move-object v3, v14

    invoke-virtual {v4, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d6

    move/from16 v1, v16

    nop

    :cond_1d6
    move v0, v1

    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->allowSafeMode(Z)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v16

    :pswitch_1e2
    move-object v2, v9

    move-object v15, v10

    move-object v4, v11

    move-object v3, v14

    invoke-virtual {v4, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f2

    move/from16 v1, v16

    nop

    :cond_1f2
    move v0, v1

    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->allowOTAUpgrade(Z)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v16

    :pswitch_1fe
    move-object v2, v9

    move-object v15, v10

    move-object v4, v11

    move-object v3, v14

    invoke-virtual {v4, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20e

    move/from16 v1, v16

    nop

    :cond_20e
    move v0, v1

    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->allowFirmwareRecovery(Z)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v16

    :pswitch_21a
    move-object v2, v9

    move-object v15, v10

    move-object v4, v11

    move-object v3, v14

    invoke-virtual {v4, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22a

    move/from16 v1, v16

    nop

    :cond_22a
    move v0, v1

    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setAdminRemovable(Z)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v16

    :pswitch_236
    move-object v2, v9

    move-object v15, v10

    move-object v4, v11

    move-object v3, v14

    invoke-virtual {v4, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->registerIntent(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    :pswitch_24c
    move-object v2, v9

    move-object v15, v10

    move-object v4, v11

    move-object v3, v14

    invoke-virtual {v4, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->callKGsv()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    :cond_25a
    move-object v2, v9

    move-object v15, v10

    move-object v4, v11

    move-object v3, v14

    invoke-virtual {v2, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v16

    :pswitch_data_262
    .packed-switch 0x1
        :pswitch_24c
        :pswitch_236
        :pswitch_21a
        :pswitch_1fe
        :pswitch_1e2
        :pswitch_1c6
        :pswitch_1b0
        :pswitch_19a
        :pswitch_183
        :pswitch_166
        :pswitch_149
        :pswitch_124
        :pswitch_fd
        :pswitch_91
        :pswitch_83
        :pswitch_75
        :pswitch_67
        :pswitch_53
        :pswitch_3d
        :pswitch_33
        :pswitch_25
        :pswitch_1b
    .end packed-switch
.end method
