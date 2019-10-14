.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$8;
.super Ljava/lang/Object;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setInverted(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$invert:Z

.field final synthetic val$ncp:Lcom/android/systemui/statusbar/NotificationColorPicker;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationColorPicker;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$8;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$8;->val$ncp:Lcom/android/systemui/statusbar/NotificationColorPicker;

    iput-object p3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$8;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$8;->val$invert:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$8;->val$ncp:Lcom/android/systemui/statusbar/NotificationColorPicker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$8;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->update(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$8;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$2302(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$8;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$8;->val$invert:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$2402(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    return-void
.end method
