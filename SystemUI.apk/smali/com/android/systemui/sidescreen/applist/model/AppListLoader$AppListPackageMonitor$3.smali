.class Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$3;
.super Ljava/lang/Object;
.source "AppListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;

.field final synthetic val$eventUserId:I

.field final synthetic val$packages:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;[Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$3;->this$1:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;

    iput-object p2, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$3;->val$packages:[Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$3;->val$eventUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$3;->val$packages:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$3;->this$1:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;

    iget v6, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$3;->val$eventUserId:I

    invoke-static {v5, v4, v6}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->access$400(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;Ljava/lang/String;I)Z

    move-result v5

    or-int/2addr v0, v5

    iget-object v5, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$3;->this$1:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;

    iget v6, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$3;->val$eventUserId:I

    invoke-static {v5, v4, v6}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->access$600(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;Ljava/lang/String;I)Z

    move-result v5

    or-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/sidescreen/applist/event/AppDataReloadedEvent;

    invoke-direct {v2}, Lcom/android/systemui/sidescreen/applist/event/AppDataReloadedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_1
    return-void
.end method
