.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$bQjXPJTdUAwhQNVdRwWFKU9IQBo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$bQjXPJTdUAwhQNVdRwWFKU9IQBo;->f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$bQjXPJTdUAwhQNVdRwWFKU9IQBo;->f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->lambda$positionClockAndNotifications$1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
