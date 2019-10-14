.class public final synthetic Lcom/android/systemui/-$$Lambda$SystemUITipPopUp$VTiTHuQVtOtuRuSw4wd-WQBhJiI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/SystemUITipPopUp;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SystemUITipPopUp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$SystemUITipPopUp$VTiTHuQVtOtuRuSw4wd-WQBhJiI;->f$0:Lcom/android/systemui/SystemUITipPopUp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$SystemUITipPopUp$VTiTHuQVtOtuRuSw4wd-WQBhJiI;->f$0:Lcom/android/systemui/SystemUITipPopUp;

    invoke-static {v0}, Lcom/android/systemui/SystemUITipPopUp;->lambda$showTipPopUp$0(Lcom/android/systemui/SystemUITipPopUp;)V

    return-void
.end method
