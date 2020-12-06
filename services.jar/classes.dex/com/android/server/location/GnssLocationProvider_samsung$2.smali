.class Lcom/android/server/location/GnssLocationProvider_samsung$2;
.super Landroid/telephony/PhoneStateListener;
.source "GnssLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider_samsung;->init_GnssLocationPrivider_samsung(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider_samsung;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider_samsung;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GnssLocationProvider_samsung;->isEmergencyNumber:Z
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$300(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # setter for: Lcom/android/server/location/GnssLocationProvider_samsung;->emergencyCallState:I
    invoke-static {v2, v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$402(Lcom/android/server/location/GnssLocationProvider_samsung;I)I

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # setter for: Lcom/android/server/location/GnssLocationProvider_samsung;->isEmergencyNumber:Z
    invoke-static {v2, v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$302(Lcom/android/server/location/GnssLocationProvider_samsung;Z)Z

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    iget-boolean v2, v2, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v2, :cond_3a

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_VZW:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v2, v3, :cond_3a

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, "native init because of emergency call during location off."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/GnssLocationProvider_samsung;->native_init_extension()Z
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$500(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    :cond_3a
    if-nez p1, :cond_6c

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GnssLocationProvider_samsung;->emergencyCallState:I
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$400(Lcom/android/server/location/GnssLocationProvider_samsung;)I

    move-result v2

    if-ne v2, v1, :cond_6c

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # setter for: Lcom/android/server/location/GnssLocationProvider_samsung;->emergencyCallState:I
    invoke-static {v1, v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$402(Lcom/android/server/location/GnssLocationProvider_samsung;I)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    iget-boolean v0, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v0, :cond_6c

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_VZW:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_6c

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_6c

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "native cleanup because emergency call during location off is ended."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/GnssLocationProvider_samsung;->native_cleanup_extension()V
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$600(Lcom/android/server/location/GnssLocationProvider_samsung;)V

    :cond_6c
    return-void
.end method
