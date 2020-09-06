.class Lcom/android/server/LocationManagerService$11;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->initializeMinorSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/LocationManagerService$11;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetricQueried(Lcom/att/iqi/lib/Metric$ID;Ljava/nio/ByteBuffer;)V
    .registers 7

    const-string v0, "LocationManagerService"

    const-string v1, "Providing Last Location"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/LocationManagerService$11;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->iqiMgr:Lcom/att/iqi/lib/IQIManager;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/server/LocationManagerService$11;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "passive"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    if-nez v0, :cond_28

    const-string v1, "LocationManagerService"

    const-string v2, "No Last Location"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_28
    new-instance v1, Lcom/att/iqi/lib/metrics/lc/LC36;

    invoke-direct {v1}, Lcom/att/iqi/lib/metrics/lc/LC36;-><init>()V

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/lc/LC36;->clear()V

    invoke-virtual {v1, v0}, Lcom/att/iqi/lib/metrics/lc/LC36;->setFromLocation(Landroid/location/Location;)Lcom/att/iqi/lib/metrics/lc/LC36;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$11;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->iqiMgr:Lcom/att/iqi/lib/IQIManager;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/att/iqi/lib/IQIManager;

    move-result-object v2

    sget-object v3, Lcom/att/iqi/lib/metrics/lc/LC36;->ID:Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {v2, v3}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/android/server/LocationManagerService$11;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->iqiMgr:Lcom/att/iqi/lib/IQIManager;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/att/iqi/lib/IQIManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    iget-object v2, p0, Lcom/android/server/LocationManagerService$11;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->LOC_DEBUG:Z
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)Z

    move-result v2

    if-eqz v2, :cond_69

    const-string v2, "LocationManagerService"

    const-string v3, "CIQ LC36 SUBMISSION ENDS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :cond_5a
    iget-object v2, p0, Lcom/android/server/LocationManagerService$11;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->LOC_DEBUG:Z
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)Z

    move-result v2

    if-eqz v2, :cond_69

    const-string v2, "LocationManagerService"

    const-string v3, "IQIManager doesn\'t allow LC36 to be submited."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    :goto_69
    goto :goto_7a

    :cond_6a
    iget-object v0, p0, Lcom/android/server/LocationManagerService$11;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->LOC_DEBUG:Z
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_7a

    const-string v0, "LocationManagerService"

    const-string/jumbo v1, "iqiMgr(LC36) is not generated..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    :goto_7a
    return-void
.end method
