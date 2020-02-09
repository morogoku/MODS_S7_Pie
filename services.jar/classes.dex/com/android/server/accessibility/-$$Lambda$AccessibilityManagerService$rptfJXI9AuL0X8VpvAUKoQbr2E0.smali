.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$rptfJXI9AuL0X8VpvAUKoQbr2E0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final synthetic f$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$rptfJXI9AuL0X8VpvAUKoQbr2E0;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$rptfJXI9AuL0X8VpvAUKoQbr2E0;->f$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iput p3, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$rptfJXI9AuL0X8VpvAUKoQbr2E0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$rptfJXI9AuL0X8VpvAUKoQbr2E0;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$rptfJXI9AuL0X8VpvAUKoQbr2E0;->f$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget v2, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$rptfJXI9AuL0X8VpvAUKoQbr2E0;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateObservedEventsLocked$3(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;I)V

    return-void
.end method
