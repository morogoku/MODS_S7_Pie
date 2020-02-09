.class public final synthetic Lcom/android/systemui/cover/-$$Lambda$SysUICoverService$NXBBsLlNm-ijo-xhomzQxL1nkzA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/cover/SysUICoverService;

.field private final synthetic f$1:Lcom/samsung/android/cover/CoverState;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/cover/SysUICoverService;Lcom/samsung/android/cover/CoverState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/cover/-$$Lambda$SysUICoverService$NXBBsLlNm-ijo-xhomzQxL1nkzA;->f$0:Lcom/android/systemui/cover/SysUICoverService;

    iput-object p2, p0, Lcom/android/systemui/cover/-$$Lambda$SysUICoverService$NXBBsLlNm-ijo-xhomzQxL1nkzA;->f$1:Lcom/samsung/android/cover/CoverState;

    iput-boolean p3, p0, Lcom/android/systemui/cover/-$$Lambda$SysUICoverService$NXBBsLlNm-ijo-xhomzQxL1nkzA;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/cover/-$$Lambda$SysUICoverService$NXBBsLlNm-ijo-xhomzQxL1nkzA;->f$0:Lcom/android/systemui/cover/SysUICoverService;

    iget-object v1, p0, Lcom/android/systemui/cover/-$$Lambda$SysUICoverService$NXBBsLlNm-ijo-xhomzQxL1nkzA;->f$1:Lcom/samsung/android/cover/CoverState;

    iget-boolean v2, p0, Lcom/android/systemui/cover/-$$Lambda$SysUICoverService$NXBBsLlNm-ijo-xhomzQxL1nkzA;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/android/systemui/cover/SysUICoverService;->lambda$updateCoverWindowLp$0(Lcom/android/systemui/cover/SysUICoverService;Lcom/samsung/android/cover/CoverState;Z)V

    return-void
.end method
