# KISS Color System Guide

## Root Structure

The KISS Color System is organized in a hierarchical tree with `SemanticColorsData` at its root. Here's the complete structure:

```
SemanticColorsData/
├── primary (BaseColors)
│   ├── background
│   ├── foreground
│   ├── outline
│   └── shadow
├── secondary (BaseColors)
│   ├── background
│   ├── foreground
│   ├── outline
│   └── shadow
├── brand (BrandColors)
│   ├── primary (BaseColors)
│   │   ├── background
│   │   ├── foreground
│   │   ├── outline
│   │   └── shadow
│   └── secondary (BaseColors)
│       ├── background
│       ├── foreground
│       ├── outline
│       └── shadow
└── state (StateColors)
    ├── success (BaseColors)
    │   ├── background
    │   ├── foreground
    │   ├── outline
    │   └── shadow
    ├── error (BaseColors)
    ├── warning (BaseColors)
    ├── disabled (BaseColors)
    └── hover (BaseColors) [optional]
```

## Core Components

### BaseColors
The fundamental building block containing:
- `background`: Main fill color
- `foreground`: Content color (usually text)
- `outline`: Border/stroke color
- `shadow`: Elevation shadow color

### BrandColors
Brand-specific colors container:
- `primary`: Main brand colors (BaseColors)
- `secondary`: Supporting brand colors (BaseColors)

### StateColors
Status and feedback colors container:
- `success`: Positive feedback (BaseColors)
- `error`: Error states (BaseColors)
- `warning`: Cautionary states (BaseColors)
- `disabled`: Inactive states (BaseColors)
- `hover`: Hover states (BaseColors) [optional]

### SemanticColorsData
The root container holding:
- `primary`: Main interface colors (BaseColors)
- `secondary`: Supporting interface colors (BaseColors)
- `brand`: Brand-specific colors (BrandColors)
- `state`: Status colors (StateColors)

## Zoning System

The system allows creating different zones, each with its own `SemanticColorsData`. A zone can override any part of the color structure while maintaining the semantic relationships.

### Zone Inheritance
```
RootZone (SemanticColorsData)
├── MarketingZone (Modified SemanticColorsData)
│   └── CampaignZone (Further modified SemanticColorsData)
└── AdminZone (Different SemanticColorsData)
```

### Creating Zones

Zones are created by modifying an existing SemanticColorsData:

```dart
// Starting from root colors
final rootColors = SemanticColorsData(...);

// Creating a marketing zone
final marketingZone = rootColors.copyWith(
  brand: BrandColors(...),  // Override brand colors
  primary: BaseColors(...), // Override primary colors
);

// Creating a sub-zone
final campaignZone = marketingZone.copyWith(
  state: StateColors(...),  // Override state colors
);
```

## Usage Principles

1. **Hierarchical Access**
   - Each level in the hierarchy can be accessed independently
   - Changes at a higher level cascade down unless overridden

2. **Consistent Structure**
   - All zones maintain the same structural hierarchy
   - Only the color values change, not the relationships

3. **Semantic Organization**
   - Colors are organized by purpose, not value
   - Makes theme changes predictable and maintainable

4. **Flexible Override System**
   - Any level can be overridden independently
   - Partial updates are possible using copyWith

## Best Practices

1. Start with a complete root color scheme
2. Create zones for major app sections
3. Override only what needs to change in each zone
4. Maintain semantic relationships across zones
5. Use the deepest common ancestor for shared styles

This structure allows for both systematic organization and flexible customization while maintaining semantic relationships throughout your application.