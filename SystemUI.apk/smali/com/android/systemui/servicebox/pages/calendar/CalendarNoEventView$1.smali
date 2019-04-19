.class Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView$1;
.super Ljava/lang/Object;
.source "CalendarNoEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView$1;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    iput-object p2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView$1;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->access$000(Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView$1;->val$intent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView$1;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->access$100(Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;)V

    return-void
.end method
