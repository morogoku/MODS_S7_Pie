.class public abstract Landroid/app/enterprise/IDataFadePolicy$Stub;
.super Landroid/os/Binder;
.source "IDataFadePolicy.java"

# interfaces
.implements Landroid/app/enterprise/IDataFadePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IDataFadePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IDataFadePolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IDataFadePolicy"

.field static final TRANSACTION_addDatafadeWipeTask:I = 0x3

.field static final TRANSACTION_deleteDatafadeWipeTask:I = 0x4

.field static final TRANSACTION_getDatafadeWipeInfoList:I = 0x5

.field static final TRANSACTION_registerDatafadeWipeCallback:I = 0x6

.field static final TRANSACTION_startDatafadeWipe:I = 0x1

.field static final TRANSACTION_stopDatafadeWipe:I = 0x2

.field static final TRANSACTION_unregisterDatafadeWipeCallback:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.enterprise.IDataFadePolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IDataFadePolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDataFadePolicy;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.enterprise.IDataFadePolicy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/enterprise/IDataFadePolicy;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/enterprise/IDataFadePolicy;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/enterprise/IDataFadePolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/enterprise/IDataFadePolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v10, "android.app.enterprise.IDataFadePolicy"

    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_a5

    packed-switch v7, :pswitch_data_aa

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_18
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IDatafadeWipeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDatafadeWipeCallback;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/enterprise/IDataFadePolicy$Stub;->unregisterDatafadeWipeCallback(Landroid/app/enterprise/IDatafadeWipeCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_2a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IDatafadeWipeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDatafadeWipeCallback;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/enterprise/IDataFadePolicy$Stub;->registerDatafadeWipeCallback(Landroid/app/enterprise/IDatafadeWipeCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_3c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/enterprise/IDataFadePolicy$Stub;->getDatafadeWipeInfoList(I)[Landroid/app/enterprise/DatafadeInfo;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v11

    :pswitch_4e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/enterprise/IDataFadePolicy$Stub;->deleteDatafadeWipeTask(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_60
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    move-object v0, v6

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/enterprise/IDataFadePolicy$Stub;->addDatafadeWipeTask(IIII[Ljava/lang/String;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_89
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IDataFadePolicy$Stub;->stopDatafadeWipe()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_97
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IDataFadePolicy$Stub;->startDatafadeWipe()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :cond_a5
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_97
        :pswitch_89
        :pswitch_60
        :pswitch_4e
        :pswitch_3c
        :pswitch_2a
        :pswitch_18
    .end packed-switch
.end method
