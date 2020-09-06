.class Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$Stub$1;
.super Ljava/lang/Object;
.source "IBTVendor.java"

# interfaces
.implements Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$getVendorFileInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$Stub;Landroid/os/HwParcel;)V
    .registers 3

    iput-object p1, p0, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$Stub$1;->this$0:Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ZLjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    iget-object v0, p0, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    iget-object v0, p0, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
