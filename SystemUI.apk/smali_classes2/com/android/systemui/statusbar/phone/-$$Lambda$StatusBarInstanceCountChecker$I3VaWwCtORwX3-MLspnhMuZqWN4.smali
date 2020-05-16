.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarInstanceCountChecker$I3VaWwCtORwX3-MLspnhMuZqWN4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarInstanceCountChecker$I3VaWwCtORwX3-MLspnhMuZqWN4;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarInstanceCountChecker$I3VaWwCtORwX3-MLspnhMuZqWN4;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->lambda$printInstanceCountLog$0(Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;)V

    return-void
.end method
