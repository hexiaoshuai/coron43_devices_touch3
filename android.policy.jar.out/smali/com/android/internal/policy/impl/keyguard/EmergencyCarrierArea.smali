.class public Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;
.super Landroid/widget/LinearLayout;
.source "EmergencyCarrierArea.java"


# instance fields
.field private mCarrierText:Lcom/android/internal/policy/impl/keyguard/CarrierText;

.field private mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;)Lcom/android/internal/policy/impl/keyguard/CarrierText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 43
    const v0, 0x10202b6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    .line 44
    const v0, 0x10202b7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea$1;-><init>(Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    return-void
.end method
