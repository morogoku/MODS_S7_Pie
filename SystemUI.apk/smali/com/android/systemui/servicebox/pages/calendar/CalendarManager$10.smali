.class Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;
.super Ljava/lang/Object;
.source "CalendarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->sendDataToExternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$600(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/aod/PluginAODManager;->getInstance()Lcom/android/systemui/aod/PluginAODManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/aod/PluginAODManager;->isPlugged()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$600(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$600(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$200(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$200(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->getFormattedTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/systemui/aod/PluginAODManager;->getInstance()Lcom/android/systemui/aod/PluginAODManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/aod/PluginAODManager;->updateCalendarData(Ljava/util/List;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
