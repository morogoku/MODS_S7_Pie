.class Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$2;
.super Ljava/lang/Object;
.source "AppListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->onPackageChangedCommon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;

.field final synthetic val$eventUserId:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$2;->this$1:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;

    iput-object p2, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$2;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$2;->val$eventUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$2;->this$1:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;

    iget-object v1, v1, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    iget-object v1, v1, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$2;->this$1:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;

    iget-object v2, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$2;->val$packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$2;->val$eventUserId:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->access$400(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;Ljava/lang/String;I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$2;->this$1:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;

    iget-object v3, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$2;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$2;->val$eventUserId:I

    invoke-static {v2, v3, v4}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->access$600(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;Ljava/lang/String;I)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$2;->this$1:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;

    iget-object v2, v2, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    iget-object v2, v2, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$2;->this$1:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;

    iget-object v3, v3, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    iget-object v3, v3, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/sidescreen/applist/event/AppDataReloadedEvent;

    invoke-direct {v3}, Lcom/android/systemui/sidescreen/applist/event/AppDataReloadedEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    return-void
.end method
