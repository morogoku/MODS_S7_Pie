.class public Lcom/android/systemui/qs/DataUsageView$Formatter;
.super Ljava/lang/Object;
.source "DataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/DataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Formatter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {v2}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object p1
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;
    .locals 16

    move-wide/from16 v0, p1

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_0

    const/16 v2, 0x400

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e8

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    if-eqz v5, :cond_2

    neg-long v8, v0

    long-to-float v8, v8

    goto :goto_2

    :cond_2
    long-to-float v8, v0

    :goto_2
    const v9, 0x7f120215

    const-wide/16 v10, 0x1

    const/high16 v12, 0x44610000    # 900.0f

    cmpl-float v13, v8, v12

    if-lez v13, :cond_3

    const v9, 0x7f120833

    int-to-long v10, v2

    int-to-float v13, v2

    div-float/2addr v8, v13

    :cond_3
    cmpl-float v13, v8, v12

    if-lez v13, :cond_4

    const v9, 0x7f12089a

    int-to-long v13, v2

    mul-long/2addr v10, v13

    int-to-float v13, v2

    div-float/2addr v8, v13

    :cond_4
    cmpl-float v13, v8, v12

    if-lez v13, :cond_5

    const v9, 0x7f120438

    int-to-long v13, v2

    mul-long/2addr v10, v13

    int-to-float v13, v2

    div-float/2addr v8, v13

    :cond_5
    cmpl-float v13, v8, v12

    if-lez v13, :cond_6

    const v9, 0x7f120bfe

    int-to-long v13, v2

    mul-long/2addr v10, v13

    int-to-float v13, v2

    div-float/2addr v8, v13

    :cond_6
    cmpl-float v12, v8, v12

    if-lez v12, :cond_7

    const v9, 0x7f12096f

    int-to-long v12, v2

    mul-long/2addr v10, v12

    int-to-float v12, v2

    div-float/2addr v8, v12

    :cond_7
    const-wide/16 v12, 0x1

    cmp-long v12, v10, v12

    if-eqz v12, :cond_d

    const/high16 v12, 0x42c80000    # 100.0f

    cmpl-float v12, v8, v12

    if-ltz v12, :cond_8

    goto :goto_3

    :cond_8
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v8, v12

    if-gez v12, :cond_9

    const/16 v12, 0x64

    const-string v13, "%.2f"

    goto :goto_4

    :cond_9
    const/high16 v12, 0x41200000    # 10.0f

    cmpg-float v12, v8, v12

    if-gez v12, :cond_b

    and-int/lit8 v12, p3, 0x1

    if-eqz v12, :cond_a

    const/16 v12, 0xa

    const-string v13, "%.1f"

    goto :goto_4

    :cond_a
    const/16 v12, 0x64

    const-string v13, "%.2f"

    goto :goto_4

    :cond_b
    and-int/lit8 v12, p3, 0x1

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    const-string v13, "%.0f"

    goto :goto_4

    :cond_c
    const/16 v12, 0x64

    const-string v13, "%.2f"

    goto :goto_4

    :cond_d
    :goto_3
    const/4 v12, 0x1

    const-string v13, "%.0f"

    :goto_4
    nop

    if-eqz v5, :cond_e

    neg-float v8, v8

    :cond_e
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v7, v6

    invoke-static {v13, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    and-int/lit8 v7, p3, 0x2

    if-nez v7, :cond_f

    goto :goto_5

    :cond_f
    int-to-float v3, v12

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v10

    int-to-long v0, v12

    div-long/2addr v3, v0

    :goto_5
    move-wide v0, v3

    move-object/from16 v3, p0

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;

    invoke-direct {v7, v6, v4, v0, v1}, Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v7
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, p1, p2, v1}, Lcom/android/systemui/qs/DataUsageView$Formatter;->formatBytes(Landroid/content/res/Resources;JI)Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;

    move-result-object v0

    const v1, 0x1040355

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/systemui/qs/DataUsageView$Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
