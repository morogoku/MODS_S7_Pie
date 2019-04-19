.class Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity$EventBusObject;
.super Ljava/lang/Object;
.source "SidescreenAppListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventBusObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity$EventBusObject;->this$0:Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBusEvent(Lcom/android/systemui/sidescreen/applist/event/AppDataReloadedEvent;)V
    .locals 2

    const-string v0, "AppDataReloadedEvent"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity$EventBusObject;->this$0:Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;

    invoke-static {v0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->preload(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTaskCallbacks;)V

    return-void
.end method
